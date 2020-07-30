// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$LocationService extends LocationService {
  _$LocationService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = LocationService;

  Future<Response<BuiltList<BuiltLocation>>> getLocation(String authorization) {
    final $url = '/location';
    final $headers = {'Authorization': authorization};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BuiltList<BuiltLocation>, BuiltLocation>($request);
  }
}
