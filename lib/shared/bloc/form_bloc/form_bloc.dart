import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meetup_flutter/shared/repository/form_repository.dart';

import '../../../../shared/shared.dart';

part 'form_bloc.freezed.dart';
part 'form_event.dart';
part 'formm_state.dart';

@singleton
class FormBloc extends Bloc<FormEvent, FormmState> {
  FormBloc(this.formRepository)
      : super(
          const FormmState(
            phoneNumber: PhoneNumberFieldModel.pure(false),
            password: PasswordFieldModel.pure(),
            error: AuthFailure.unverified(),
            status: FormzStatus.pure,
          ),
        );

  final FormRepository formRepository;

  @override
  Stream<FormmState> mapEventToState(FormEvent event) async* {
    yield* event.map(formPhoneNumberChanged: (e) async* {
      final phoneNumber = PhoneNumberFieldModel.dirty(e.valid, e.phoneNumber);
      yield state.copyWith(
        phoneNumber: phoneNumber,
        status: Formz.validate([
          phoneNumber,
          state.password,
        ]),
      );
    }, formPasswordChanged: (e) async* {
      final password = PasswordFieldModel.dirty(e.password);
      yield state.copyWith(
        password: password,
        status: Formz.validate([
          state.phoneNumber,
          password,
        ]),
      );
    }, formSubmitted: (e) async* {
      if (state.status.isValid) {
        yield state.copyWith(status: FormzStatus.submissionInProgress);
        final Either<AuthFailure, bool> result =
            await formRepository.formSubmit(
          username: state.phoneNumber.value,
          password: state.password.value,
        );
        yield result.fold(
          (l) {
            return state.copyWith(
                status: FormzStatus.submissionFailure, error: l);
          },
          (r) {
            return state.copyWith(status: FormzStatus.submissionSuccess);
          },
        );
      }
    });
  }
}
