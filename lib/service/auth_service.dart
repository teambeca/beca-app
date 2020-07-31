import 'dart:math';

import 'package:beca_app/model/built_auth.dart';
import 'package:beca_app/model/built_sign_in.dart';
import 'package:beca_app/model/built_sign_up.dart';
import 'package:beca_app/model/built_sign_up_anonymous.dart';
import 'package:beca_app/model/built_value_converter.dart';
import 'package:beca_app/utils/constants.dart';
import 'package:beca_app/utils/local_store_keys.dart';
import 'package:chopper/chopper.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_service.chopper.dart';

@ChopperApi(baseUrl: "/auth")
abstract class AuthService extends ChopperService {
  static AuthService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
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
  Future<Response<BuiltAuth>> signUp(@Body() BuiltSignUp body);

  @Get(path: '/sign-up/anonymous')
  Future<Response<BuiltAuth>> signUpAnonymous(
      @Body() BuiltSignUpAnonymous body);

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
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      await prefs.remove(LocalStoreKeys.AuthToken.toString());
    } catch (e) {}
    return;
  }

  Future<void> persistToken(String token) async {
    /// write to keystore/keychain
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      await prefs.setString(LocalStoreKeys.AuthToken.toString(), token);
    } catch (e) {}
    return;
  }

  Future<bool> hasToken() async {
    /// read from keystore/keychain
    // await Future.delayed(Duration(seconds: 1));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      String authToken = prefs.getString(LocalStoreKeys.AuthToken.toString());

      return authToken != null ? true : false;
    } catch (e) {
      return false;
    }

    // return Random().nextBool();
    // return true;
    // return false;
  }
}
