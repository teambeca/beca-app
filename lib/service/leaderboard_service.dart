import 'package:beca_app/model/built_user.dart';
import 'package:beca_app/model/built_value_converter.dart';
import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';

part 'leaderboard_service.chopper.dart';

@ChopperApi(baseUrl: "/leaderboard")
abstract class LeaderboardService extends ChopperService {
  static LeaderboardService create() {
    final client = ChopperClient(
        baseUrl: "https://beca-api.herokuapp.com",
        services: [
          _$LeaderboardService(),
        ],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
        ]);
    return _$LeaderboardService(client);
  }

  @Get()
  Future<Response<BuiltList<BuiltUser>>> getLeaderboard(
    @Header('Authorization') String authorization,
  );
}
