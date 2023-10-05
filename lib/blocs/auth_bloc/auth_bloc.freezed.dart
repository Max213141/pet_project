// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String username)
        createUser,
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String username)?
        createUser,
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String username)?
        createUser,
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(LogInEvent value) logIn,
    required TResult Function(LogOutEvent value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(LogInEvent value)? logIn,
    TResult? Function(LogOutEvent value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(LogInEvent value)? logIn,
    TResult Function(LogOutEvent value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateUserEventImplCopyWith<$Res> {
  factory _$$CreateUserEventImplCopyWith(_$CreateUserEventImpl value,
          $Res Function(_$CreateUserEventImpl) then) =
      __$$CreateUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String username});
}

/// @nodoc
class __$$CreateUserEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CreateUserEventImpl>
    implements _$$CreateUserEventImplCopyWith<$Res> {
  __$$CreateUserEventImplCopyWithImpl(
      _$CreateUserEventImpl _value, $Res Function(_$CreateUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? username = null,
  }) {
    return _then(_$CreateUserEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateUserEventImpl implements CreateUserEvent {
  const _$CreateUserEventImpl(
      {required this.email, required this.password, required this.username});

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;

  @override
  String toString() {
    return 'AuthEvent.createUser(email: $email, password: $password, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserEventImplCopyWith<_$CreateUserEventImpl> get copyWith =>
      __$$CreateUserEventImplCopyWithImpl<_$CreateUserEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String username)
        createUser,
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
  }) {
    return createUser(email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String username)?
        createUser,
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
  }) {
    return createUser?.call(email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String username)?
        createUser,
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(email, password, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(LogInEvent value) logIn,
    required TResult Function(LogOutEvent value) logOut,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(LogInEvent value)? logIn,
    TResult? Function(LogOutEvent value)? logOut,
  }) {
    return createUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(LogInEvent value)? logIn,
    TResult Function(LogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(this);
    }
    return orElse();
  }
}

abstract class CreateUserEvent implements AuthEvent {
  const factory CreateUserEvent(
      {required final String email,
      required final String password,
      required final String username}) = _$CreateUserEventImpl;

  String get email;
  String get password;
  String get username;
  @JsonKey(ignore: true)
  _$$CreateUserEventImplCopyWith<_$CreateUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogInEventImplCopyWith<$Res> {
  factory _$$LogInEventImplCopyWith(
          _$LogInEventImpl value, $Res Function(_$LogInEventImpl) then) =
      __$$LogInEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LogInEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogInEventImpl>
    implements _$$LogInEventImplCopyWith<$Res> {
  __$$LogInEventImplCopyWithImpl(
      _$LogInEventImpl _value, $Res Function(_$LogInEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LogInEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogInEventImpl implements LogInEvent {
  const _$LogInEventImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.logIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInEventImplCopyWith<_$LogInEventImpl> get copyWith =>
      __$$LogInEventImplCopyWithImpl<_$LogInEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String username)
        createUser,
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
  }) {
    return logIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String username)?
        createUser,
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
  }) {
    return logIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String username)?
        createUser,
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(LogInEvent value) logIn,
    required TResult Function(LogOutEvent value) logOut,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(LogInEvent value)? logIn,
    TResult? Function(LogOutEvent value)? logOut,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(LogInEvent value)? logIn,
    TResult Function(LogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class LogInEvent implements AuthEvent {
  const factory LogInEvent(
      {required final String email,
      required final String password}) = _$LogInEventImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LogInEventImplCopyWith<_$LogInEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutEventImplCopyWith<$Res> {
  factory _$$LogOutEventImplCopyWith(
          _$LogOutEventImpl value, $Res Function(_$LogOutEventImpl) then) =
      __$$LogOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutEventImpl>
    implements _$$LogOutEventImplCopyWith<$Res> {
  __$$LogOutEventImplCopyWithImpl(
      _$LogOutEventImpl _value, $Res Function(_$LogOutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutEventImpl implements LogOutEvent {
  const _$LogOutEventImpl();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String username)
        createUser,
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String username)?
        createUser,
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String username)?
        createUser,
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(LogInEvent value) logIn,
    required TResult Function(LogOutEvent value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(LogInEvent value)? logIn,
    TResult? Function(LogOutEvent value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(LogInEvent value)? logIn,
    TResult Function(LogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOutEvent implements AuthEvent {
  const factory LogOutEvent() = _$LogOutEventImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String email, String password) userCreated,
    required TResult Function(String email, String password) logInSuccess,
    required TResult Function() logOutSuccess,
    required TResult Function(String errorText) authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String email, String password)? userCreated,
    TResult? Function(String email, String password)? logInSuccess,
    TResult? Function()? logOutSuccess,
    TResult? Function(String errorText)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String email, String password)? userCreated,
    TResult Function(String email, String password)? logInSuccess,
    TResult Function()? logOutSuccess,
    TResult Function(String errorText)? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthUserCreatedState value) userCreated,
    required TResult Function(_AuthLogInSuccessState value) logInSuccess,
    required TResult Function(_AuthLogOutSuccessState value) logOutSuccess,
    required TResult Function(_AuthErrorState value) authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthUserCreatedState value)? userCreated,
    TResult? Function(_AuthLogInSuccessState value)? logInSuccess,
    TResult? Function(_AuthLogOutSuccessState value)? logOutSuccess,
    TResult? Function(_AuthErrorState value)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthUserCreatedState value)? userCreated,
    TResult Function(_AuthLogInSuccessState value)? logInSuccess,
    TResult Function(_AuthLogOutSuccessState value)? logOutSuccess,
    TResult Function(_AuthErrorState value)? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String email, String password) userCreated,
    required TResult Function(String email, String password) logInSuccess,
    required TResult Function() logOutSuccess,
    required TResult Function(String errorText) authError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String email, String password)? userCreated,
    TResult? Function(String email, String password)? logInSuccess,
    TResult? Function()? logOutSuccess,
    TResult? Function(String errorText)? authError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String email, String password)? userCreated,
    TResult Function(String email, String password)? logInSuccess,
    TResult Function()? logOutSuccess,
    TResult Function(String errorText)? authError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthUserCreatedState value) userCreated,
    required TResult Function(_AuthLogInSuccessState value) logInSuccess,
    required TResult Function(_AuthLogOutSuccessState value) logOutSuccess,
    required TResult Function(_AuthErrorState value) authError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthUserCreatedState value)? userCreated,
    TResult? Function(_AuthLogInSuccessState value)? logInSuccess,
    TResult? Function(_AuthLogOutSuccessState value)? logOutSuccess,
    TResult? Function(_AuthErrorState value)? authError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthUserCreatedState value)? userCreated,
    TResult Function(_AuthLogInSuccessState value)? logInSuccess,
    TResult Function(_AuthLogOutSuccessState value)? logOutSuccess,
    TResult Function(_AuthErrorState value)? authError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AuthLoadingStateImplCopyWith<$Res> {
  factory _$$AuthLoadingStateImplCopyWith(_$AuthLoadingStateImpl value,
          $Res Function(_$AuthLoadingStateImpl) then) =
      __$$AuthLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoadingStateImpl>
    implements _$$AuthLoadingStateImplCopyWith<$Res> {
  __$$AuthLoadingStateImplCopyWithImpl(_$AuthLoadingStateImpl _value,
      $Res Function(_$AuthLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoadingStateImpl implements _AuthLoadingState {
  const _$AuthLoadingStateImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String email, String password) userCreated,
    required TResult Function(String email, String password) logInSuccess,
    required TResult Function() logOutSuccess,
    required TResult Function(String errorText) authError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String email, String password)? userCreated,
    TResult? Function(String email, String password)? logInSuccess,
    TResult? Function()? logOutSuccess,
    TResult? Function(String errorText)? authError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String email, String password)? userCreated,
    TResult Function(String email, String password)? logInSuccess,
    TResult Function()? logOutSuccess,
    TResult Function(String errorText)? authError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthUserCreatedState value) userCreated,
    required TResult Function(_AuthLogInSuccessState value) logInSuccess,
    required TResult Function(_AuthLogOutSuccessState value) logOutSuccess,
    required TResult Function(_AuthErrorState value) authError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthUserCreatedState value)? userCreated,
    TResult? Function(_AuthLogInSuccessState value)? logInSuccess,
    TResult? Function(_AuthLogOutSuccessState value)? logOutSuccess,
    TResult? Function(_AuthErrorState value)? authError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthUserCreatedState value)? userCreated,
    TResult Function(_AuthLogInSuccessState value)? logInSuccess,
    TResult Function(_AuthLogOutSuccessState value)? logOutSuccess,
    TResult Function(_AuthErrorState value)? authError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthLoadingState implements AuthState {
  const factory _AuthLoadingState() = _$AuthLoadingStateImpl;
}

/// @nodoc
abstract class _$$AuthUserCreatedStateImplCopyWith<$Res> {
  factory _$$AuthUserCreatedStateImplCopyWith(_$AuthUserCreatedStateImpl value,
          $Res Function(_$AuthUserCreatedStateImpl) then) =
      __$$AuthUserCreatedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthUserCreatedStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthUserCreatedStateImpl>
    implements _$$AuthUserCreatedStateImplCopyWith<$Res> {
  __$$AuthUserCreatedStateImplCopyWithImpl(_$AuthUserCreatedStateImpl _value,
      $Res Function(_$AuthUserCreatedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthUserCreatedStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthUserCreatedStateImpl implements _AuthUserCreatedState {
  const _$AuthUserCreatedStateImpl({this.email = '', this.password = ''});

// @Default(Playlist(name: '', tracks: [])) Playlist playlist,
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'AuthState.userCreated(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserCreatedStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUserCreatedStateImplCopyWith<_$AuthUserCreatedStateImpl>
      get copyWith =>
          __$$AuthUserCreatedStateImplCopyWithImpl<_$AuthUserCreatedStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String email, String password) userCreated,
    required TResult Function(String email, String password) logInSuccess,
    required TResult Function() logOutSuccess,
    required TResult Function(String errorText) authError,
  }) {
    return userCreated(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String email, String password)? userCreated,
    TResult? Function(String email, String password)? logInSuccess,
    TResult? Function()? logOutSuccess,
    TResult? Function(String errorText)? authError,
  }) {
    return userCreated?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String email, String password)? userCreated,
    TResult Function(String email, String password)? logInSuccess,
    TResult Function()? logOutSuccess,
    TResult Function(String errorText)? authError,
    required TResult orElse(),
  }) {
    if (userCreated != null) {
      return userCreated(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthUserCreatedState value) userCreated,
    required TResult Function(_AuthLogInSuccessState value) logInSuccess,
    required TResult Function(_AuthLogOutSuccessState value) logOutSuccess,
    required TResult Function(_AuthErrorState value) authError,
  }) {
    return userCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthUserCreatedState value)? userCreated,
    TResult? Function(_AuthLogInSuccessState value)? logInSuccess,
    TResult? Function(_AuthLogOutSuccessState value)? logOutSuccess,
    TResult? Function(_AuthErrorState value)? authError,
  }) {
    return userCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthUserCreatedState value)? userCreated,
    TResult Function(_AuthLogInSuccessState value)? logInSuccess,
    TResult Function(_AuthLogOutSuccessState value)? logOutSuccess,
    TResult Function(_AuthErrorState value)? authError,
    required TResult orElse(),
  }) {
    if (userCreated != null) {
      return userCreated(this);
    }
    return orElse();
  }
}

abstract class _AuthUserCreatedState implements AuthState {
  const factory _AuthUserCreatedState(
      {final String email, final String password}) = _$AuthUserCreatedStateImpl;

// @Default(Playlist(name: '', tracks: [])) Playlist playlist,
  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$AuthUserCreatedStateImplCopyWith<_$AuthUserCreatedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthLogInSuccessStateImplCopyWith<$Res> {
  factory _$$AuthLogInSuccessStateImplCopyWith(
          _$AuthLogInSuccessStateImpl value,
          $Res Function(_$AuthLogInSuccessStateImpl) then) =
      __$$AuthLogInSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthLogInSuccessStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLogInSuccessStateImpl>
    implements _$$AuthLogInSuccessStateImplCopyWith<$Res> {
  __$$AuthLogInSuccessStateImplCopyWithImpl(_$AuthLogInSuccessStateImpl _value,
      $Res Function(_$AuthLogInSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthLogInSuccessStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthLogInSuccessStateImpl implements _AuthLogInSuccessState {
  const _$AuthLogInSuccessStateImpl({this.email = '', this.password = ''});

// @Default(Playlist(name: '', tracks: [])) Playlist playlist,
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'AuthState.logInSuccess(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLogInSuccessStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthLogInSuccessStateImplCopyWith<_$AuthLogInSuccessStateImpl>
      get copyWith => __$$AuthLogInSuccessStateImplCopyWithImpl<
          _$AuthLogInSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String email, String password) userCreated,
    required TResult Function(String email, String password) logInSuccess,
    required TResult Function() logOutSuccess,
    required TResult Function(String errorText) authError,
  }) {
    return logInSuccess(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String email, String password)? userCreated,
    TResult? Function(String email, String password)? logInSuccess,
    TResult? Function()? logOutSuccess,
    TResult? Function(String errorText)? authError,
  }) {
    return logInSuccess?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String email, String password)? userCreated,
    TResult Function(String email, String password)? logInSuccess,
    TResult Function()? logOutSuccess,
    TResult Function(String errorText)? authError,
    required TResult orElse(),
  }) {
    if (logInSuccess != null) {
      return logInSuccess(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthUserCreatedState value) userCreated,
    required TResult Function(_AuthLogInSuccessState value) logInSuccess,
    required TResult Function(_AuthLogOutSuccessState value) logOutSuccess,
    required TResult Function(_AuthErrorState value) authError,
  }) {
    return logInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthUserCreatedState value)? userCreated,
    TResult? Function(_AuthLogInSuccessState value)? logInSuccess,
    TResult? Function(_AuthLogOutSuccessState value)? logOutSuccess,
    TResult? Function(_AuthErrorState value)? authError,
  }) {
    return logInSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthUserCreatedState value)? userCreated,
    TResult Function(_AuthLogInSuccessState value)? logInSuccess,
    TResult Function(_AuthLogOutSuccessState value)? logOutSuccess,
    TResult Function(_AuthErrorState value)? authError,
    required TResult orElse(),
  }) {
    if (logInSuccess != null) {
      return logInSuccess(this);
    }
    return orElse();
  }
}

abstract class _AuthLogInSuccessState implements AuthState {
  const factory _AuthLogInSuccessState(
      {final String email,
      final String password}) = _$AuthLogInSuccessStateImpl;

// @Default(Playlist(name: '', tracks: [])) Playlist playlist,
  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$AuthLogInSuccessStateImplCopyWith<_$AuthLogInSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthLogOutSuccessStateImplCopyWith<$Res> {
  factory _$$AuthLogOutSuccessStateImplCopyWith(
          _$AuthLogOutSuccessStateImpl value,
          $Res Function(_$AuthLogOutSuccessStateImpl) then) =
      __$$AuthLogOutSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLogOutSuccessStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLogOutSuccessStateImpl>
    implements _$$AuthLogOutSuccessStateImplCopyWith<$Res> {
  __$$AuthLogOutSuccessStateImplCopyWithImpl(
      _$AuthLogOutSuccessStateImpl _value,
      $Res Function(_$AuthLogOutSuccessStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLogOutSuccessStateImpl implements _AuthLogOutSuccessState {
  const _$AuthLogOutSuccessStateImpl();

  @override
  String toString() {
    return 'AuthState.logOutSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLogOutSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String email, String password) userCreated,
    required TResult Function(String email, String password) logInSuccess,
    required TResult Function() logOutSuccess,
    required TResult Function(String errorText) authError,
  }) {
    return logOutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String email, String password)? userCreated,
    TResult? Function(String email, String password)? logInSuccess,
    TResult? Function()? logOutSuccess,
    TResult? Function(String errorText)? authError,
  }) {
    return logOutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String email, String password)? userCreated,
    TResult Function(String email, String password)? logInSuccess,
    TResult Function()? logOutSuccess,
    TResult Function(String errorText)? authError,
    required TResult orElse(),
  }) {
    if (logOutSuccess != null) {
      return logOutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthUserCreatedState value) userCreated,
    required TResult Function(_AuthLogInSuccessState value) logInSuccess,
    required TResult Function(_AuthLogOutSuccessState value) logOutSuccess,
    required TResult Function(_AuthErrorState value) authError,
  }) {
    return logOutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthUserCreatedState value)? userCreated,
    TResult? Function(_AuthLogInSuccessState value)? logInSuccess,
    TResult? Function(_AuthLogOutSuccessState value)? logOutSuccess,
    TResult? Function(_AuthErrorState value)? authError,
  }) {
    return logOutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthUserCreatedState value)? userCreated,
    TResult Function(_AuthLogInSuccessState value)? logInSuccess,
    TResult Function(_AuthLogOutSuccessState value)? logOutSuccess,
    TResult Function(_AuthErrorState value)? authError,
    required TResult orElse(),
  }) {
    if (logOutSuccess != null) {
      return logOutSuccess(this);
    }
    return orElse();
  }
}

abstract class _AuthLogOutSuccessState implements AuthState {
  const factory _AuthLogOutSuccessState() = _$AuthLogOutSuccessStateImpl;
}

/// @nodoc
abstract class _$$AuthErrorStateImplCopyWith<$Res> {
  factory _$$AuthErrorStateImplCopyWith(_$AuthErrorStateImpl value,
          $Res Function(_$AuthErrorStateImpl) then) =
      __$$AuthErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$AuthErrorStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthErrorStateImpl>
    implements _$$AuthErrorStateImplCopyWith<$Res> {
  __$$AuthErrorStateImplCopyWithImpl(
      _$AuthErrorStateImpl _value, $Res Function(_$AuthErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$AuthErrorStateImpl(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthErrorStateImpl implements _AuthErrorState {
  const _$AuthErrorStateImpl({this.errorText = 'Ошибка авторизации'});

  @override
  @JsonKey()
  final String errorText;

  @override
  String toString() {
    return 'AuthState.authError(errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorStateImpl &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthErrorStateImplCopyWith<_$AuthErrorStateImpl> get copyWith =>
      __$$AuthErrorStateImplCopyWithImpl<_$AuthErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String email, String password) userCreated,
    required TResult Function(String email, String password) logInSuccess,
    required TResult Function() logOutSuccess,
    required TResult Function(String errorText) authError,
  }) {
    return authError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String email, String password)? userCreated,
    TResult? Function(String email, String password)? logInSuccess,
    TResult? Function()? logOutSuccess,
    TResult? Function(String errorText)? authError,
  }) {
    return authError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String email, String password)? userCreated,
    TResult Function(String email, String password)? logInSuccess,
    TResult Function()? logOutSuccess,
    TResult Function(String errorText)? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AuthLoadingState value) loading,
    required TResult Function(_AuthUserCreatedState value) userCreated,
    required TResult Function(_AuthLogInSuccessState value) logInSuccess,
    required TResult Function(_AuthLogOutSuccessState value) logOutSuccess,
    required TResult Function(_AuthErrorState value) authError,
  }) {
    return authError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AuthLoadingState value)? loading,
    TResult? Function(_AuthUserCreatedState value)? userCreated,
    TResult? Function(_AuthLogInSuccessState value)? logInSuccess,
    TResult? Function(_AuthLogOutSuccessState value)? logOutSuccess,
    TResult? Function(_AuthErrorState value)? authError,
  }) {
    return authError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthLoadingState value)? loading,
    TResult Function(_AuthUserCreatedState value)? userCreated,
    TResult Function(_AuthLogInSuccessState value)? logInSuccess,
    TResult Function(_AuthLogOutSuccessState value)? logOutSuccess,
    TResult Function(_AuthErrorState value)? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(this);
    }
    return orElse();
  }
}

abstract class _AuthErrorState implements AuthState {
  const factory _AuthErrorState({final String errorText}) =
      _$AuthErrorStateImpl;

  String get errorText;
  @JsonKey(ignore: true)
  _$$AuthErrorStateImplCopyWith<_$AuthErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
