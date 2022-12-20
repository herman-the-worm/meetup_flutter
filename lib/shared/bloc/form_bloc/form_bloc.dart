import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meetup_flutter/shared/repository/form_repository.dart';

import '../../shared.dart';

part 'form_bloc.freezed.dart';
part 'form_event.dart';
part 'formm_state.dart';

@singleton
class FormBloc extends Bloc<FormEvent, FormmState> {
  FormBloc({
    required FormRepository formRepository,
  })  : _formRepository = formRepository,
        super(const FormmState(
          phoneNumber: PhoneNumberFieldModel.pure(false),
          password: PasswordFieldModel.pure(),
          error: AuthFailure.unverified(),
          status: FormzStatus.pure,
        )) {
    on<_FormPhoneNumberChanged>(_formPhoneNumberChanged);
    on<_FormPasswordChanged>(_formPasswordChanged);
    on<_FormSubmitted>(_formSubmitted);
  }

  final FormRepository _formRepository;

  Future<void> _formPhoneNumberChanged(
    _FormPhoneNumberChanged event,
    Emitter<FormmState> emit,
  ) async {
    final phoneNumber =
        PhoneNumberFieldModel.dirty(event.valid, event.phoneNumber);
    emit(
      state.copyWith(
        phoneNumber: phoneNumber,
        status: Formz.validate([
          phoneNumber,
          state.password,
        ]),
      ),
    );
  }

  Future<void> _formPasswordChanged(
    _FormPasswordChanged event,
    Emitter<FormmState> emit,
  ) async {
    final password = PasswordFieldModel.dirty(event.password);
    emit(
      state.copyWith(
        password: password,
        status: Formz.validate(
          [
            state.phoneNumber,
            password,
          ],
        ),
      ),
    );
  }

  Future<void> _formSubmitted(
    _FormSubmitted event,
    Emitter<FormmState> emit,
  ) async {
    if (state.status.isValid) {
      emit(
        state.copyWith(status: FormzStatus.submissionInProgress),
      );
      final Either<AuthFailure, bool> result = await _formRepository.formSubmit(
        username: state.phoneNumber.value,
        password: state.password.value,
      );
      emit(
        result.fold(
          (l) {
            return state.copyWith(
                status: FormzStatus.submissionFailure, error: l);
          },
          (r) {
            return state.copyWith(status: FormzStatus.submissionSuccess);
          },
        ),
      );
    }
  }
}
