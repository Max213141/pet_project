part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.createUser({
    required String email,
    required String password,
    required String username,
  }) = CreateUserEvent;

  const factory AuthEvent.logIn({
    required String email,
    required String password,
  }) = LogInEvent;

  const factory AuthEvent.logOut() = LogOutEvent;
}
