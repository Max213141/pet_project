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
    required TResult Function(String email, String password) createUser,
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? createUser,
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? createUser,
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
abstract class _$$CreateUserEventCopyWith<$Res> {
  factory _$$CreateUserEventCopyWith(
          _$CreateUserEvent value, $Res Function(_$CreateUserEvent) then) =
      __$$CreateUserEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$CreateUserEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CreateUserEvent>
    implements _$$CreateUserEventCopyWith<$Res> {
  __$$CreateUserEventCopyWithImpl(
      _$CreateUserEvent _value, $Res Function(_$CreateUserEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$CreateUserEvent(
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

class _$CreateUserEvent implements CreateUserEvent {
  const _$CreateUserEvent({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.createUser(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserEventCopyWith<_$CreateUserEvent> get copyWith =>
      __$$CreateUserEventCopyWithImpl<_$CreateUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) createUser,
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
  }) {
    return createUser(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? createUser,
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
  }) {
    return createUser?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? createUser,
    TResult Function(String email, String password)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(email, password);
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
      required final String password}) = _$CreateUserEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$CreateUserEventCopyWith<_$CreateUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogInEventCopyWith<$Res> {
  factory _$$LogInEventCopyWith(
          _$LogInEvent value, $Res Function(_$LogInEvent) then) =
      __$$LogInEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LogInEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogInEvent>
    implements _$$LogInEventCopyWith<$Res> {
  __$$LogInEventCopyWithImpl(
      _$LogInEvent _value, $Res Function(_$LogInEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LogInEvent(
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

class _$LogInEvent implements LogInEvent {
  const _$LogInEvent({required this.email, required this.password});

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
            other is _$LogInEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInEventCopyWith<_$LogInEvent> get copyWith =>
      __$$LogInEventCopyWithImpl<_$LogInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) createUser,
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
  }) {
    return logIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? createUser,
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
  }) {
    return logIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? createUser,
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
      required final String password}) = _$LogInEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LogInEventCopyWith<_$LogInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutEventCopyWith<$Res> {
  factory _$$LogOutEventCopyWith(
          _$LogOutEvent value, $Res Function(_$LogOutEvent) then) =
      __$$LogOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutEvent>
    implements _$$LogOutEventCopyWith<$Res> {
  __$$LogOutEventCopyWithImpl(
      _$LogOutEvent _value, $Res Function(_$LogOutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutEvent implements LogOutEvent {
  const _$LogOutEvent();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) createUser,
    required TResult Function(String email, String password) logIn,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? createUser,
    TResult? Function(String email, String password)? logIn,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? createUser,
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
  const factory LogOutEvent() = _$LogOutEvent;
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
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
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
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_AuthLoadingStateCopyWith<$Res> {
  factory _$$_AuthLoadingStateCopyWith(
          _$_AuthLoadingState value, $Res Function(_$_AuthLoadingState) then) =
      __$$_AuthLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthLoadingStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthLoadingState>
    implements _$$_AuthLoadingStateCopyWith<$Res> {
  __$$_AuthLoadingStateCopyWithImpl(
      _$_AuthLoadingState _value, $Res Function(_$_AuthLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthLoadingState implements _AuthLoadingState {
  const _$_AuthLoadingState();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthLoadingState);
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
  const factory _AuthLoadingState() = _$_AuthLoadingState;
}

/// @nodoc
abstract class _$$_AuthUserCreatedStateCopyWith<$Res> {
  factory _$$_AuthUserCreatedStateCopyWith(_$_AuthUserCreatedState value,
          $Res Function(_$_AuthUserCreatedState) then) =
      __$$_AuthUserCreatedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AuthUserCreatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthUserCreatedState>
    implements _$$_AuthUserCreatedStateCopyWith<$Res> {
  __$$_AuthUserCreatedStateCopyWithImpl(_$_AuthUserCreatedState _value,
      $Res Function(_$_AuthUserCreatedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_AuthUserCreatedState(
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

class _$_AuthUserCreatedState implements _AuthUserCreatedState {
  const _$_AuthUserCreatedState({this.email = '', this.password = ''});

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
            other is _$_AuthUserCreatedState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthUserCreatedStateCopyWith<_$_AuthUserCreatedState> get copyWith =>
      __$$_AuthUserCreatedStateCopyWithImpl<_$_AuthUserCreatedState>(
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
      {final String email, final String password}) = _$_AuthUserCreatedState;

// @Default(Playlist(name: '', tracks: [])) Playlist playlist,
  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_AuthUserCreatedStateCopyWith<_$_AuthUserCreatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthLogInSuccessStateCopyWith<$Res> {
  factory _$$_AuthLogInSuccessStateCopyWith(_$_AuthLogInSuccessState value,
          $Res Function(_$_AuthLogInSuccessState) then) =
      __$$_AuthLogInSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AuthLogInSuccessStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthLogInSuccessState>
    implements _$$_AuthLogInSuccessStateCopyWith<$Res> {
  __$$_AuthLogInSuccessStateCopyWithImpl(_$_AuthLogInSuccessState _value,
      $Res Function(_$_AuthLogInSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_AuthLogInSuccessState(
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

class _$_AuthLogInSuccessState implements _AuthLogInSuccessState {
  const _$_AuthLogInSuccessState({this.email = '', this.password = ''});

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
            other is _$_AuthLogInSuccessState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthLogInSuccessStateCopyWith<_$_AuthLogInSuccessState> get copyWith =>
      __$$_AuthLogInSuccessStateCopyWithImpl<_$_AuthLogInSuccessState>(
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
      {final String email, final String password}) = _$_AuthLogInSuccessState;

// @Default(Playlist(name: '', tracks: [])) Playlist playlist,
  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_AuthLogInSuccessStateCopyWith<_$_AuthLogInSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthLogOutSuccessStateCopyWith<$Res> {
  factory _$$_AuthLogOutSuccessStateCopyWith(_$_AuthLogOutSuccessState value,
          $Res Function(_$_AuthLogOutSuccessState) then) =
      __$$_AuthLogOutSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthLogOutSuccessStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthLogOutSuccessState>
    implements _$$_AuthLogOutSuccessStateCopyWith<$Res> {
  __$$_AuthLogOutSuccessStateCopyWithImpl(_$_AuthLogOutSuccessState _value,
      $Res Function(_$_AuthLogOutSuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthLogOutSuccessState implements _AuthLogOutSuccessState {
  const _$_AuthLogOutSuccessState();

  @override
  String toString() {
    return 'AuthState.logOutSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthLogOutSuccessState);
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
  const factory _AuthLogOutSuccessState() = _$_AuthLogOutSuccessState;
}

/// @nodoc
abstract class _$$_AuthErrorStateCopyWith<$Res> {
  factory _$$_AuthErrorStateCopyWith(
          _$_AuthErrorState value, $Res Function(_$_AuthErrorState) then) =
      __$$_AuthErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$_AuthErrorStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthErrorState>
    implements _$$_AuthErrorStateCopyWith<$Res> {
  __$$_AuthErrorStateCopyWithImpl(
      _$_AuthErrorState _value, $Res Function(_$_AuthErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$_AuthErrorState(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthErrorState implements _AuthErrorState {
  const _$_AuthErrorState({this.errorText = 'Ошибка авторизации'});

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
            other is _$_AuthErrorState &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthErrorStateCopyWith<_$_AuthErrorState> get copyWith =>
      __$$_AuthErrorStateCopyWithImpl<_$_AuthErrorState>(this, _$identity);

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
  const factory _AuthErrorState({final String errorText}) = _$_AuthErrorState;

  String get errorText;
  @JsonKey(ignore: true)
  _$$_AuthErrorStateCopyWith<_$_AuthErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
