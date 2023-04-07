part of 'form_bloc.dart';

@freezed
class FormEvent with _$FormEvent {
  const factory FormEvent.formUsernameChanged(String username) =
      _FormUsernameChanged;
  const factory FormEvent.formPasswordChanged(String password) =
      _FormPasswordChanged;
  const factory FormEvent.formSubmitted() = _FormSubmitted;
}
