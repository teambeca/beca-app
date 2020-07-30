import 'package:beca_app/model/built_profile.dart';
import 'package:beca_app/model/built_value_converter.dart';
import 'package:chopper/chopper.dart';

part 'profile_service.chopper.dart';

@ChopperApi(baseUrl: "/user/profile")
abstract class ProfileService extends ChopperService {
  static ProfileService create() {
    final client = ChopperClient(
        baseUrl: "https://beca-api.herokuapp.com",
        services: [
          _$ProfileService(),
        ],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
        ]);
    return _$ProfileService(client);
  }

  @Get()
  Future<Response<BuiltProfile>> getProfile(
    @Header('Authorization') String authorization,
  );
  @Patch()
  Future<Response<BuiltProfile>> patchProfile(
    @Header('Authorization') String authorization,
    @Body() BuiltProfile body,
  );
}
