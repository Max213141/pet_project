part of 'auth_bloc.dart';

enum AuthStatus {
  initial,
  loading,
  authenticationSuccess,
  authenticationError,
  logOutSuccess,
  logOutError,
  error,
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial({
    @Default(AuthStatus.initial) AuthStatus status,
    // @Default(Playlist(name: '', tracks: [])) Playlist playlist,
    @Default('') String email,
    @Default('') String password,
  }) = _Initial;
}
