import 'package:beca_app/model/built_account.dart';
import 'package:beca_app/model/built_becca_bot_request.dart';
import 'package:beca_app/model/built_becca_bot_response.dart';
import 'package:beca_app/model/built_value_converter.dart';
import 'package:chopper/chopper.dart';

part 'becca_bot_service.chopper.dart';

@ChopperApi(baseUrl: "/story-bot")
abstract class BeccaBotService extends ChopperService {
  static BeccaBotService create() {
    final client = ChopperClient(
        baseUrl: "https://beca-api.herokuapp.com",
        services: [
          _$BeccaBotService(),
        ],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
        ]);
    return _$BeccaBotService(client);
  }

  @Post()
  Future<Response<BuiltBeccaBotResponse>> postBeccaBot(
    @Header('Authorization') String authorization,
    @Body() BuiltBeccaBotRequest body,
  );
}
