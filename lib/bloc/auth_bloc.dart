import 'dart:async';

import 'package:beca_app/repository/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({@required this.authRepository})
      : assert(authRepository != null),
        super(AuthInitial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AuthStarted) {
      final bool hasToken = await authRepository.hasToken();

      if (hasToken) {
        yield AuthSuccess();
      } else {
        yield AuthFailure(message: "Default Error Message");
      }
    }

    if (event is AuthLogInRequest) {
      yield AuthInProgress();

      try {
        final token = await authRepository.authenticate(
          username: event.username,
          password: event.password,
        );

        await authRepository.persistToken(token);

        yield AuthSuccess();
      } catch (error) {
        yield AuthFailure(message: "Default Error Message");
        // yield LoginFailure(error: error.toString());
      }
    }

    if (event is AuthLogOut) {
      yield AuthInProgress();
      await authRepository.deleteToken();
      yield AuthFailure(message: "Default Error Message");
    }
  }
}
