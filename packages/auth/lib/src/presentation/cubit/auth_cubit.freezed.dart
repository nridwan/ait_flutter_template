// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  LoginInput get loginInput => throw _privateConstructorUsedError;
  PasswordInput get passwordInput => throw _privateConstructorUsedError;
  FormzStatus get formStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {LoginInput loginInput,
      PasswordInput passwordInput,
      FormzStatus formStatus});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginInput = null,
    Object? passwordInput = null,
    Object? formStatus = null,
  }) {
    return _then(_value.copyWith(
      loginInput: null == loginInput
          ? _value.loginInput
          : loginInput // ignore: cast_nullable_to_non_nullable
              as LoginInput,
      passwordInput: null == passwordInput
          ? _value.passwordInput
          : passwordInput // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginInput loginInput,
      PasswordInput passwordInput,
      FormzStatus formStatus});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginInput = null,
    Object? passwordInput = null,
    Object? formStatus = null,
  }) {
    return _then(_$_AuthState(
      loginInput: null == loginInput
          ? _value.loginInput
          : loginInput // ignore: cast_nullable_to_non_nullable
              as LoginInput,
      passwordInput: null == passwordInput
          ? _value.passwordInput
          : passwordInput // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  _$_AuthState(
      {required this.loginInput,
      required this.passwordInput,
      required this.formStatus});

  @override
  final LoginInput loginInput;
  @override
  final PasswordInput passwordInput;
  @override
  final FormzStatus formStatus;

  @override
  String toString() {
    return 'AuthState(loginInput: $loginInput, passwordInput: $passwordInput, formStatus: $formStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.loginInput, loginInput) ||
                other.loginInput == loginInput) &&
            (identical(other.passwordInput, passwordInput) ||
                other.passwordInput == passwordInput) &&
            (identical(other.formStatus, formStatus) ||
                other.formStatus == formStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loginInput, passwordInput, formStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  factory _AuthState(
      {required final LoginInput loginInput,
      required final PasswordInput passwordInput,
      required final FormzStatus formStatus}) = _$_AuthState;

  @override
  LoginInput get loginInput;
  @override
  PasswordInput get passwordInput;
  @override
  FormzStatus get formStatus;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
