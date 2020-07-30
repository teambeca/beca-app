// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$AuthService extends AuthService {
  _$AuthService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = AuthService;

  Future<Response<BuiltAuth>> signIn(BuiltSignIn body) {
    final $url = '/auth';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BuiltAuth, BuiltAuth>($request);
  }

  Future<Response<BuiltAuth>> signUp(BuiltSignUp body) {
    final $url = '/auth/sign-up';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BuiltAuth, BuiltAuth>($request);
  }

  Future<Response<BuiltAuth>> signUpAnonymous(BuiltSignUpAnonymous body) {
    final $url = '/auth/sign-up/anonymous';
    final $body = body;
    final $request = Request('GET', $url, client.baseUrl, body: $body);
    return client.send<BuiltAuth, BuiltAuth>($request);
  }
}
