import 'dart:async';

import 'package:beca_app/model/built_sign_in.dart';
import 'package:beca_app/model/built_sign_up.dart';
import 'package:beca_app/model/built_sign_up_anonymous.dart';
import 'package:beca_app/service/auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService authService;

  AuthBloc({@required this.authService})
      : assert(authService != null),
        super(AuthInitial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    // #region AuthStarted
    if (event is AuthStarted) {
      // await Future.delayed(Duration(milliseconds: 800));

      final bool hasToken = await authService.hasToken();

      if (hasToken) {
        yield AuthSuccess();
      } else {
        yield AuthFailure(message: "Default Error Message");
      }
    }
    // #endregion

    // #region AuthSignIn
    if (event is AuthSignIn) {
      yield AuthInProgress();

      try {
        final response = await authService.signIn(
          BuiltSignIn(
            (b) => b
              ..username = event.username
              ..password = event.password,
          ),
        );
        await authService.persistToken(response.body.accessToken);

        yield AuthSuccess();
      } catch (e) {
        yield AuthFailure(message: e.toString());
      }
    }
    // #endregion

    // #region AuthSignUp
    if (event is AuthSignUp) {
      yield AuthInProgress();

      try {
        final response = await authService.signUp(
          BuiltSignUp(
            (b) => b
              ..avatarTag = "admin"
              ..username = event.username
              ..email = event.email
              ..password = event.password,
          ),
        );
        await authService.persistToken(response.body.accessToken);

        yield AuthSuccess();
      } catch (e) {
        yield AuthFailure(message: e.toString());
      }
    }
    // #endregion

    // #region AuthSignUpAnonymous
    if (event is AuthSignUpAnonymous) {
      yield AuthInProgress();

      try {
        final response = await authService.signUpAnonymous(
          BuiltSignUpAnonymous((b) => b..avatarTag = "admin"),
        );
        await authService.persistToken(response.body.accessToken);

        yield AuthSuccess();
      } catch (e) {
        yield AuthFailure(message: e.toString());
      }
    }
    // #endregion

    // #region AuthSignOut
    if (event is AuthSignOut) {
      yield AuthInProgress();
      await authService.deleteToken();
      yield AuthFailure(message: "Default Error Message");
    }
    // #endregion
  }
}
