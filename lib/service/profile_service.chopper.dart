// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ProfileService extends ProfileService {
  _$ProfileService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ProfileService;

  Future<Response<BuiltProfile>> getProfile(String authorization) {
    final $url = '/user/profile';
    final $headers = {'Authorization': authorization};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BuiltProfile, BuiltProfile>($request);
  }

  Future<Response<BuiltProfile>> patchProfile(
      String authorization, BuiltProfile body) {
    final $url = '/user/profile';
    final $headers = {'Authorization': authorization};
    final $body = body;
    final $request =
        Request('PATCH', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BuiltProfile, BuiltProfile>($request);
  }
}
