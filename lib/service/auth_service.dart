import 'dart:math';

import 'package:beca_app/model/built_auth.dart';
import 'package:beca_app/model/built_sign_in.dart';
import 'package:beca_app/model/built_value_converter.dart';
import 'package:chopper/chopper.dart';
import 'package:meta/meta.dart';

part 'auth_service.chopper.dart';

@ChopperApi(baseUrl: "/auth")
abstract class AuthService extends ChopperService {
  static AuthService create() {
    final client = ChopperClient(
        baseUrl: "https://beca-api.herokuapp.com",
        services: [
          _$AuthService(),
        ],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
        ]);
    return _$AuthService(client);
  }

  @Post()
  Future<Response<BuiltAuth>> signIn(@Body() BuiltSignIn body);

  @Post(path: '/sign-up')
  Future<Response> signUp(String username, String password);

  @Get(path: '/sign-up/anonymous')
  Future<Response> signUpAnonymous();

  Future<String> authenticate({
    @required String username,
    @required String password,
  }) async {
    await Future.delayed(Duration(seconds: 1));
    if (Random().nextBool())
      return 'token';
    else
      return null;
  }

  Future<void> deleteToken() async {
    /// delete from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<void> persistToken(String token) async {
    /// write to keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<bool> hasToken() async {
    /// read from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return Random().nextBool();
  }
}
