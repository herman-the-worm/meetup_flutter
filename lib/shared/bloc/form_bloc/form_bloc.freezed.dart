// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FormEventTearOff {
  const _$FormEventTearOff();

  _FormPhoneNumberChanged formPhoneNumberChanged(
      String phoneNumber, bool valid) {
    return _FormPhoneNumberChanged(
      phoneNumber,
      valid,
    );
  }

  _FormPasswordChanged formPasswordChanged(String password) {
    return _FormPasswordChanged(
      password,
    );
  }

  _FormSubmitted formSubmitted() {
    return const _FormSubmitted();
  }
}

/// @nodoc
const $FormEvent = _$FormEventTearOff();

/// @nodoc
mixin _$FormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, bool valid)
        formPhoneNumberChanged,
    required TResult Function(String password) formPasswordChanged,
    required TResult Function() formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber, bool valid)? formPhoneNumberChanged,
    TResult Function(String password)? formPasswordChanged,
    TResult Function()? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, bool valid)? formPhoneNumberChanged,
    TResult Function(String password)? formPasswordChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormPhoneNumberChanged value)
        formPhoneNumberChanged,
    required TResult Function(_FormPasswordChanged value) formPasswordChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FormPhoneNumberChanged value)? formPhoneNumberChanged,
    TResult Function(_FormPasswordChanged value)? formPasswordChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormPhoneNumberChanged value)? formPhoneNumberChanged,
    TResult Function(_FormPasswordChanged value)? formPasswordChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormEventCopyWith<$Res> {
  factory $FormEventCopyWith(FormEvent value, $Res Function(FormEvent) then) =
      _$FormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormEventCopyWithImpl<$Res> implements $FormEventCopyWith<$Res> {
  _$FormEventCopyWithImpl(this._value, this._then);

  final FormEvent _value;
  // ignore: unused_field
  final $Res Function(FormEvent) _then;
}

/// @nodoc
abstract class _$FormPhoneNumberChangedCopyWith<$Res> {
  factory _$FormPhoneNumberChangedCopyWith(_FormPhoneNumberChanged value,
          $Res Function(_FormPhoneNumberChanged) then) =
      __$FormPhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber, bool valid});
}

/// @nodoc
class __$FormPhoneNumberChangedCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res>
    implements _$FormPhoneNumberChangedCopyWith<$Res> {
  __$FormPhoneNumberChangedCopyWithImpl(_FormPhoneNumberChanged _value,
      $Res Function(_FormPhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as _FormPhoneNumberChanged));

  @override
  _FormPhoneNumberChanged get _value => super._value as _FormPhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? valid = freezed,
  }) {
    return _then(_FormPhoneNumberChanged(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      valid == freezed
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FormPhoneNumberChanged implements _FormPhoneNumberChanged {
  const _$_FormPhoneNumberChanged(this.phoneNumber, this.valid);

  @override
  final String phoneNumber;
  @override
  final bool valid;

  @override
  String toString() {
    return 'FormEvent.formPhoneNumberChanged(phoneNumber: $phoneNumber, valid: $valid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FormPhoneNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.valid, valid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(valid));

  @JsonKey(ignore: true)
  @override
  _$FormPhoneNumberChangedCopyWith<_FormPhoneNumberChanged> get copyWith =>
      __$FormPhoneNumberChangedCopyWithImpl<_FormPhoneNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, bool valid)
        formPhoneNumberChanged,
    required TResult Function(String password) formPasswordChanged,
    required TResult Function() formSubmitted,
  }) {
    return formPhoneNumberChanged(phoneNumber, valid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber, bool valid)? formPhoneNumberChanged,
    TResult Function(String password)? formPasswordChanged,
    TResult Function()? formSubmitted,
  }) {
    return formPhoneNumberChanged?.call(phoneNumber, valid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, bool valid)? formPhoneNumberChanged,
    TResult Function(String password)? formPasswordChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (formPhoneNumberChanged != null) {
      return formPhoneNumberChanged(phoneNumber, valid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormPhoneNumberChanged value)
        formPhoneNumberChanged,
    required TResult Function(_FormPasswordChanged value) formPasswordChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return formPhoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FormPhoneNumberChanged value)? formPhoneNumberChanged,
    TResult Function(_FormPasswordChanged value)? formPasswordChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
  }) {
    return formPhoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormPhoneNumberChanged value)? formPhoneNumberChanged,
    TResult Function(_FormPasswordChanged value)? formPasswordChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formPhoneNumberChanged != null) {
      return formPhoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _FormPhoneNumberChanged implements FormEvent {
  const factory _FormPhoneNumberChanged(String phoneNumber, bool valid) =
      _$_FormPhoneNumberChanged;

  String get phoneNumber;
  bool get valid;
  @JsonKey(ignore: true)
  _$FormPhoneNumberChangedCopyWith<_FormPhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FormPasswordChangedCopyWith<$Res> {
  factory _$FormPasswordChangedCopyWith(_FormPasswordChanged value,
          $Res Function(_FormPasswordChanged) then) =
      __$FormPasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$FormPasswordChangedCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res>
    implements _$FormPasswordChangedCopyWith<$Res> {
  __$FormPasswordChangedCopyWithImpl(
      _FormPasswordChanged _value, $Res Function(_FormPasswordChanged) _then)
      : super(_value, (v) => _then(v as _FormPasswordChanged));

  @override
  _FormPasswordChanged get _value => super._value as _FormPasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_FormPasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FormPasswordChanged implements _FormPasswordChanged {
  const _$_FormPasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'FormEvent.formPasswordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FormPasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$FormPasswordChangedCopyWith<_FormPasswordChanged> get copyWith =>
      __$FormPasswordChangedCopyWithImpl<_FormPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, bool valid)
        formPhoneNumberChanged,
    required TResult Function(String password) formPasswordChanged,
    required TResult Function() formSubmitted,
  }) {
    return formPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber, bool valid)? formPhoneNumberChanged,
    TResult Function(String password)? formPasswordChanged,
    TResult Function()? formSubmitted,
  }) {
    return formPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, bool valid)? formPhoneNumberChanged,
    TResult Function(String password)? formPasswordChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (formPasswordChanged != null) {
      return formPasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormPhoneNumberChanged value)
        formPhoneNumberChanged,
    required TResult Function(_FormPasswordChanged value) formPasswordChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return formPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FormPhoneNumberChanged value)? formPhoneNumberChanged,
    TResult Function(_FormPasswordChanged value)? formPasswordChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
  }) {
    return formPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormPhoneNumberChanged value)? formPhoneNumberChanged,
    TResult Function(_FormPasswordChanged value)? formPasswordChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formPasswordChanged != null) {
      return formPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _FormPasswordChanged implements FormEvent {
  const factory _FormPasswordChanged(String password) = _$_FormPasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$FormPasswordChangedCopyWith<_FormPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FormSubmittedCopyWith<$Res> {
  factory _$FormSubmittedCopyWith(
          _FormSubmitted value, $Res Function(_FormSubmitted) then) =
      __$FormSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FormSubmittedCopyWithImpl<$Res> extends _$FormEventCopyWithImpl<$Res>
    implements _$FormSubmittedCopyWith<$Res> {
  __$FormSubmittedCopyWithImpl(
      _FormSubmitted _value, $Res Function(_FormSubmitted) _then)
      : super(_value, (v) => _then(v as _FormSubmitted));

  @override
  _FormSubmitted get _value => super._value as _FormSubmitted;
}

/// @nodoc

class _$_FormSubmitted implements _FormSubmitted {
  const _$_FormSubmitted();

  @override
  String toString() {
    return 'FormEvent.formSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FormSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, bool valid)
        formPhoneNumberChanged,
    required TResult Function(String password) formPasswordChanged,
    required TResult Function() formSubmitted,
  }) {
    return formSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber, bool valid)? formPhoneNumberChanged,
    TResult Function(String password)? formPasswordChanged,
    TResult Function()? formSubmitted,
  }) {
    return formSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, bool valid)? formPhoneNumberChanged,
    TResult Function(String password)? formPasswordChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormPhoneNumberChanged value)
        formPhoneNumberChanged,
    required TResult Function(_FormPasswordChanged value) formPasswordChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FormPhoneNumberChanged value)? formPhoneNumberChanged,
    TResult Function(_FormPasswordChanged value)? formPasswordChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormPhoneNumberChanged value)? formPhoneNumberChanged,
    TResult Function(_FormPasswordChanged value)? formPasswordChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class _FormSubmitted implements FormEvent {
  const factory _FormSubmitted() = _$_FormSubmitted;
}

/// @nodoc
class _$FormmStateTearOff {
  const _$FormmStateTearOff();

  _FormmState call(
      {required FormzStatus status,
      required PhoneNumberFieldModel phoneNumber,
      required AuthFailure error,
      required PasswordFieldModel password}) {
    return _FormmState(
      status: status,
      phoneNumber: phoneNumber,
      error: error,
      password: password,
    );
  }
}

/// @nodoc
const $FormmState = _$FormmStateTearOff();

/// @nodoc
mixin _$FormmState {
  FormzStatus get status => throw _privateConstructorUsedError;
  PhoneNumberFieldModel get phoneNumber => throw _privateConstructorUsedError;
  AuthFailure get error => throw _privateConstructorUsedError;
  PasswordFieldModel get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormmStateCopyWith<FormmState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormmStateCopyWith<$Res> {
  factory $FormmStateCopyWith(
          FormmState value, $Res Function(FormmState) then) =
      _$FormmStateCopyWithImpl<$Res>;
  $Res call(
      {FormzStatus status,
      PhoneNumberFieldModel phoneNumber,
      AuthFailure error,
      PasswordFieldModel password});

  $AuthFailureCopyWith<$Res> get error;
}

/// @nodoc
class _$FormmStateCopyWithImpl<$Res> implements $FormmStateCopyWith<$Res> {
  _$FormmStateCopyWithImpl(this._value, this._then);

  final FormmState _value;
  // ignore: unused_field
  final $Res Function(FormmState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? phoneNumber = freezed,
    Object? error = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberFieldModel,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFieldModel,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get error {
    return $AuthFailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$FormmStateCopyWith<$Res> implements $FormmStateCopyWith<$Res> {
  factory _$FormmStateCopyWith(
          _FormmState value, $Res Function(_FormmState) then) =
      __$FormmStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {FormzStatus status,
      PhoneNumberFieldModel phoneNumber,
      AuthFailure error,
      PasswordFieldModel password});

  @override
  $AuthFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$FormmStateCopyWithImpl<$Res> extends _$FormmStateCopyWithImpl<$Res>
    implements _$FormmStateCopyWith<$Res> {
  __$FormmStateCopyWithImpl(
      _FormmState _value, $Res Function(_FormmState) _then)
      : super(_value, (v) => _then(v as _FormmState));

  @override
  _FormmState get _value => super._value as _FormmState;

  @override
  $Res call({
    Object? status = freezed,
    Object? phoneNumber = freezed,
    Object? error = freezed,
    Object? password = freezed,
  }) {
    return _then(_FormmState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberFieldModel,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFieldModel,
    ));
  }
}

/// @nodoc

class _$_FormmState implements _FormmState {
  const _$_FormmState(
      {required this.status,
      required this.phoneNumber,
      required this.error,
      required this.password});

  @override
  final FormzStatus status;
  @override
  final PhoneNumberFieldModel phoneNumber;
  @override
  final AuthFailure error;
  @override
  final PasswordFieldModel password;

  @override
  String toString() {
    return 'FormmState(status: $status, phoneNumber: $phoneNumber, error: $error, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FormmState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$FormmStateCopyWith<_FormmState> get copyWith =>
      __$FormmStateCopyWithImpl<_FormmState>(this, _$identity);
}

abstract class _FormmState implements FormmState {
  const factory _FormmState(
      {required FormzStatus status,
      required PhoneNumberFieldModel phoneNumber,
      required AuthFailure error,
      required PasswordFieldModel password}) = _$_FormmState;

  @override
  FormzStatus get status;
  @override
  PhoneNumberFieldModel get phoneNumber;
  @override
  AuthFailure get error;
  @override
  PasswordFieldModel get password;
  @override
  @JsonKey(ignore: true)
  _$FormmStateCopyWith<_FormmState> get copyWith =>
      throw _privateConstructorUsedError;
}
