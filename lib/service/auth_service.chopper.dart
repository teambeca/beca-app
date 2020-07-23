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

  Future<Response> signUp(String username, String password) {
    final $url = '/auth/sign-up';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> signUpAnonymous() {
    final $url = '/auth/sign-up/anonymous';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
