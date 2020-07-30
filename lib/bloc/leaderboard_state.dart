part of 'leaderboard_bloc.dart';

abstract class LeaderboardState extends Equatable {
  final BuiltList<BuiltUser> users;

  const LeaderboardState({this.users});

  @override
  List<Object> get props => [users];
}

class LeaderboardInitial extends LeaderboardState {}

class LeaderboardInProgress extends LeaderboardState {}

class LeaderboardSuccess extends LeaderboardState {
  final BuiltList<BuiltUser> users;

  const LeaderboardSuccess({@required this.users});

  @override
  List<Object> get props => [users];
}

class LeaderboardFailure extends LeaderboardState {
  final String message;

  const LeaderboardFailure({@required this.message});

  @override
  List<Object> get props => [message];
}
