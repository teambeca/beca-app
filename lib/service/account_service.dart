import 'package:beca_app/model/built_account.dart';
import 'package:beca_app/model/built_value_converter.dart';
import 'package:chopper/chopper.dart';

part 'account_service.chopper.dart';

@ChopperApi(baseUrl: "/user")
abstract class AccountService extends ChopperService {
  static AccountService create() {
    final client = ChopperClient(
        baseUrl: "https://beca-api.herokuapp.com",
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
