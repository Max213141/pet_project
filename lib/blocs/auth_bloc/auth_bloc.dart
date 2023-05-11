import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(_Initial()) {
    on<AuthEvent>(_onEvent);
  }

  void _onEvent(
    AuthEvent event,
    Emitter<AuthState> emit,
  ) {
    // if (event is AuthRegisterUserEvent)
    //   return _onQrCamPermissionCheck(event, emit);
    // if (event is AuthLogInEvent) {
    //   return _onRegisterQrPayment(event, emit);
    // }
    // if (event is AuthLogOutEvent) {
    //   return _onRegisterQrPayment(event, emit);
    // }
    // ;
  }
}
