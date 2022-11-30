import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = _ServerError;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      _InvalidEmailAndPasswordCombination;
  const factory AuthFailure.unauthorized() = _Unauthorized;
  const factory AuthFailure.notfound() = _NotFound;
  const factory AuthFailure.duplicate() = _Duplicate;
  const factory AuthFailure.tooManyRequests() = _TooManyRequests;
  const factory AuthFailure.pendingSetUpProfile() = _PendingSetUpProfile;
  const factory AuthFailure.unverified() = _Unverified;
}
