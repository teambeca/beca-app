part of 'leaderboard_bloc.dart';

abstract class LeaderboardEvent extends Equatable {
  const LeaderboardEvent();

  @override
  List<Object> get props => [];
}

class LeaderboardStarted extends LeaderboardEvent {}

class LeaderboardGet extends LeaderboardEvent {}
