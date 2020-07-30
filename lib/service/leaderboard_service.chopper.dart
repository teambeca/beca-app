// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$LeaderboardService extends LeaderboardService {
  _$LeaderboardService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = LeaderboardService;

  Future<Response<BuiltList<BuiltUser>>> getLeaderboard(String authorization) {
    final $url = '/leaderboard';
    final $headers = {'Authorization': authorization};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BuiltList<BuiltUser>, BuiltUser>($request);
  }
}
