import 'dart:async';

import 'package:beca_app/model/built_user.dart';
import 'package:beca_app/service/leaderboard_service.dart';
import 'package:beca_app/utils/local_store_keys.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:built_collection/built_collection.dart';

part 'leaderboard_event.dart';
part 'leaderboard_state.dart';

class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  final LeaderboardService leaderboardService;

  LeaderboardBloc({@required this.leaderboardService})
      : assert(leaderboardService != null),
        super(LeaderboardInitial());

  @override
  Stream<LeaderboardState> mapEventToState(
    LeaderboardEvent event,
  ) async* {
    // #region LeaderboardStarted
    if (event is LeaderboardStarted) {
      try {
        yield LeaderboardInProgress();

        SharedPreferences prefs = await SharedPreferences.getInstance();
        String authToken = prefs.getString(LocalStoreKeys.AuthToken.toString());

        var leaderboardList =
            await leaderboardService.getLeaderboard("Bearer $authToken");

        yield LeaderboardSuccess(users: leaderboardList.body);
      } catch (e) {
        yield LeaderboardFailure(message: e.toString());
      }
    }
    // #endregion

    // #region LeaderboardGet
    if (event is LeaderboardGet) {
      yield LeaderboardInProgress();

      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String authToken = prefs.getString(LocalStoreKeys.AuthToken.toString());

        var leaderboardList =
            await leaderboardService.getLeaderboard("Bearer $authToken");

        yield LeaderboardSuccess(users: leaderboardList.body);
      } catch (e) {
        yield LeaderboardFailure(message: e.toString());
      }
    }
    // #endregion
  }
}
