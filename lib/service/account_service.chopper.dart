// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$AccountService extends AccountService {
  _$AccountService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = AccountService;

  Future<Response<BuiltAccount>> getAccount(String authorization) {
    final $url = '/user';
    final $headers = {'Authorization': authorization};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BuiltAccount, BuiltAccount>($request);
  }

  Future<Response<BuiltAccount>> patchAccount(
      String authorization, BuiltAccount body) {
    final $url = '/user';
    final $headers = {'Authorization': authorization};
    final $body = body;
    final $request =
        Request('PATCH', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BuiltAccount, BuiltAccount>($request);
  }
}
