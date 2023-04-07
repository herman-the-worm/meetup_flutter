part of 'form_bloc.dart';

@freezed
class FormmState with _$FormmState {
  const factory FormmState({
    required FormzStatus status,
    required UsernameFieldModel usernameFieldModel,
    required AuthFailure error,
    required PasswordFieldModel passwordFieldModel,
  }) = _FormmState;
}
