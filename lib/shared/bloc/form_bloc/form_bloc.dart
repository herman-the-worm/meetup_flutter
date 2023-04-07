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
          usernameFieldModel: UsernameFieldModel.pure(),
          passwordFieldModel: PasswordFieldModel.pure(),
          error: AuthFailure.unverified(),
          status: FormzStatus.pure,
        )) {
    on<_FormUsernameChanged>(_formUsernameChanged);
    on<_FormPasswordChanged>(_formPasswordChanged);
    on<_FormSubmitted>(_formSubmitted);
  }

  final FormRepository _formRepository;

  Future<void> _formUsernameChanged(
    _FormUsernameChanged event,
    Emitter<FormmState> emit,
  ) async {
    final data = UsernameFieldModel.dirty(event.username);
    emit(
      state.copyWith(
        usernameFieldModel: data,
        status: Formz.validate([
          data,
          state.passwordFieldModel,
        ]),
      ),
    );
  }

  Future<void> _formPasswordChanged(
    _FormPasswordChanged event,
    Emitter<FormmState> emit,
  ) async {
    final data = PasswordFieldModel.dirty(event.password);
    emit(
      state.copyWith(
        passwordFieldModel: data,
        status: Formz.validate(
          [
            state.usernameFieldModel,
            data,
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
        username: state.usernameFieldModel.value,
        password: state.passwordFieldModel.value,
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
