// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function(String phoneNumber, bool valid)? formPhoneNumberChanged,
    TResult? Function(String password)? formPasswordChanged,
    TResult? Function()? formSubmitted,
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
    TResult? Function(_FormPhoneNumberChanged value)? formPhoneNumberChanged,
    TResult? Function(_FormPasswordChanged value)? formPasswordChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
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
      _$FormEventCopyWithImpl<$Res, FormEvent>;
}

/// @nodoc
class _$FormEventCopyWithImpl<$Res, $Val extends FormEvent>
    implements $FormEventCopyWith<$Res> {
  _$FormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FormPhoneNumberChangedCopyWith<$Res> {
  factory _$$_FormPhoneNumberChangedCopyWith(_$_FormPhoneNumberChanged value,
          $Res Function(_$_FormPhoneNumberChanged) then) =
      __$$_FormPhoneNumberChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, bool valid});
}

/// @nodoc
class __$$_FormPhoneNumberChangedCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res, _$_FormPhoneNumberChanged>
    implements _$$_FormPhoneNumberChangedCopyWith<$Res> {
  __$$_FormPhoneNumberChangedCopyWithImpl(_$_FormPhoneNumberChanged _value,
      $Res Function(_$_FormPhoneNumberChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? valid = null,
  }) {
    return _then(_$_FormPhoneNumberChanged(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == valid
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
            other is _$_FormPhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.valid, valid) || other.valid == valid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, valid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormPhoneNumberChangedCopyWith<_$_FormPhoneNumberChanged> get copyWith =>
      __$$_FormPhoneNumberChangedCopyWithImpl<_$_FormPhoneNumberChanged>(
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
    TResult? Function(String phoneNumber, bool valid)? formPhoneNumberChanged,
    TResult? Function(String password)? formPasswordChanged,
    TResult? Function()? formSubmitted,
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
    TResult? Function(_FormPhoneNumberChanged value)? formPhoneNumberChanged,
    TResult? Function(_FormPasswordChanged value)? formPasswordChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
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
  const factory _FormPhoneNumberChanged(
      final String phoneNumber, final bool valid) = _$_FormPhoneNumberChanged;

  String get phoneNumber;
  bool get valid;
  @JsonKey(ignore: true)
  _$$_FormPhoneNumberChangedCopyWith<_$_FormPhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FormPasswordChangedCopyWith<$Res> {
  factory _$$_FormPasswordChangedCopyWith(_$_FormPasswordChanged value,
          $Res Function(_$_FormPasswordChanged) then) =
      __$$_FormPasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_FormPasswordChangedCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res, _$_FormPasswordChanged>
    implements _$$_FormPasswordChangedCopyWith<$Res> {
  __$$_FormPasswordChangedCopyWithImpl(_$_FormPasswordChanged _value,
      $Res Function(_$_FormPasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_FormPasswordChanged(
      null == password
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
            other is _$_FormPasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormPasswordChangedCopyWith<_$_FormPasswordChanged> get copyWith =>
      __$$_FormPasswordChangedCopyWithImpl<_$_FormPasswordChanged>(
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
    TResult? Function(String phoneNumber, bool valid)? formPhoneNumberChanged,
    TResult? Function(String password)? formPasswordChanged,
    TResult? Function()? formSubmitted,
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
    TResult? Function(_FormPhoneNumberChanged value)? formPhoneNumberChanged,
    TResult? Function(_FormPasswordChanged value)? formPasswordChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
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
  const factory _FormPasswordChanged(final String password) =
      _$_FormPasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$_FormPasswordChangedCopyWith<_$_FormPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FormSubmittedCopyWith<$Res> {
  factory _$$_FormSubmittedCopyWith(
          _$_FormSubmitted value, $Res Function(_$_FormSubmitted) then) =
      __$$_FormSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FormSubmittedCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res, _$_FormSubmitted>
    implements _$$_FormSubmittedCopyWith<$Res> {
  __$$_FormSubmittedCopyWithImpl(
      _$_FormSubmitted _value, $Res Function(_$_FormSubmitted) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_FormSubmitted);
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
    TResult? Function(String phoneNumber, bool valid)? formPhoneNumberChanged,
    TResult? Function(String password)? formPasswordChanged,
    TResult? Function()? formSubmitted,
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
    TResult? Function(_FormPhoneNumberChanged value)? formPhoneNumberChanged,
    TResult? Function(_FormPasswordChanged value)? formPasswordChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
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
      _$FormmStateCopyWithImpl<$Res, FormmState>;
  @useResult
  $Res call(
      {FormzStatus status,
      PhoneNumberFieldModel phoneNumber,
      AuthFailure error,
      PasswordFieldModel password});

  $AuthFailureCopyWith<$Res> get error;
}

/// @nodoc
class _$FormmStateCopyWithImpl<$Res, $Val extends FormmState>
    implements $FormmStateCopyWith<$Res> {
  _$FormmStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? phoneNumber = null,
    Object? error = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberFieldModel,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFieldModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<$Res> get error {
    return $AuthFailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FormmStateCopyWith<$Res>
    implements $FormmStateCopyWith<$Res> {
  factory _$$_FormmStateCopyWith(
          _$_FormmState value, $Res Function(_$_FormmState) then) =
      __$$_FormmStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzStatus status,
      PhoneNumberFieldModel phoneNumber,
      AuthFailure error,
      PasswordFieldModel password});

  @override
  $AuthFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$_FormmStateCopyWithImpl<$Res>
    extends _$FormmStateCopyWithImpl<$Res, _$_FormmState>
    implements _$$_FormmStateCopyWith<$Res> {
  __$$_FormmStateCopyWithImpl(
      _$_FormmState _value, $Res Function(_$_FormmState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? phoneNumber = null,
    Object? error = null,
    Object? password = null,
  }) {
    return _then(_$_FormmState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberFieldModel,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
      password: null == password
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
            other is _$_FormmState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, phoneNumber, error, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormmStateCopyWith<_$_FormmState> get copyWith =>
      __$$_FormmStateCopyWithImpl<_$_FormmState>(this, _$identity);
}

abstract class _FormmState implements FormmState {
  const factory _FormmState(
      {required final FormzStatus status,
      required final PhoneNumberFieldModel phoneNumber,
      required final AuthFailure error,
      required final PasswordFieldModel password}) = _$_FormmState;

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
  _$$_FormmStateCopyWith<_$_FormmState> get copyWith =>
      throw _privateConstructorUsedError;
}
