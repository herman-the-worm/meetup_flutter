part of 'form_bloc.dart';

@freezed
class FormmState with _$FormmState {
  const factory FormmState({
    required FormzStatus status,
    required PhoneNumberFieldModel phoneNumber,
    required AuthFailure error,
    required PasswordFieldModel password,
  }) = _FormmState;
}
