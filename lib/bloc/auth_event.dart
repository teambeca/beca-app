part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthStarted extends AuthEvent {}

class AuthSignIn extends AuthEvent {
  final String username;
  final String password;

  const AuthSignIn({
    @required this.username,
    @required this.password,
  });

  @override
  List<Object> get props => [username, password];
}

class AuthSignUp extends AuthEvent {
  final String email;
  final String username;
  final String password;

  const AuthSignUp({
    @required this.email,
    @required this.username,
    @required this.password,
  });

  @override
  List<Object> get props => [email, username, password];
}

class AuthSignUpAnonymous extends AuthEvent {}

class AuthSignOut extends AuthEvent {}
