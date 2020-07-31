import 'package:beca_app/model/built_location.dart';
import 'package:beca_app/model/built_value_converter.dart';
import 'package:beca_app/utils/constants.dart';
import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';

part 'location_service.chopper.dart';

@ChopperApi(baseUrl: "/location")
abstract class LocationService extends ChopperService {
  static LocationService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [
          _$LocationService(),
        ],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
        ]);
    return _$LocationService(client);
  }

  @Get()
  Future<Response<BuiltList<BuiltLocation>>> getLocation(
    @Header('Authorization') String authorization,
  );
}
