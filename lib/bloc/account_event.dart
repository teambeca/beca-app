part of 'account_bloc.dart';

abstract class AccountEvent extends Equatable {
  const AccountEvent();

  @override
  List<Object> get props => [];
}

class AccountStarted extends AccountEvent {}

class AccountGet extends AccountEvent {}

class AccountPatch extends AccountEvent {
  final String username;
  final String password;
  final String avatarTag;

  const AccountPatch({
    this.username,
    this.password,
    this.avatarTag,
  });

  @override
  List<Object> get props => [
        username,
        password,
        avatarTag,
      ];
}
