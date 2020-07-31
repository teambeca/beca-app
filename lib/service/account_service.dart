import 'package:beca_app/model/built_account.dart';
import 'package:beca_app/model/built_value_converter.dart';
import 'package:beca_app/utils/constants.dart';
import 'package:chopper/chopper.dart';

part 'account_service.chopper.dart';

@ChopperApi(baseUrl: "/user")
abstract class AccountService extends ChopperService {
  static AccountService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [
          _$AccountService(),
        ],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
        ]);
    return _$AccountService(client);
  }

  @Get()
  Future<Response<BuiltAccount>> getAccount(
    @Header('Authorization') String authorization,
  );

  @Patch()
  Future<Response<BuiltAccount>> patchAccount(
    @Header('Authorization') String authorization,
    @Body() BuiltAccount body,
  );
}
