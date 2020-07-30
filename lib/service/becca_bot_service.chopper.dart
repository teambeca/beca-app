// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'becca_bot_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$BeccaBotService extends BeccaBotService {
  _$BeccaBotService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = BeccaBotService;

  Future<Response<BuiltBeccaBotResponse>> postBeccaBot(
      String authorization, BuiltBeccaBotRequest body) {
    final $url = '/story-bot';
    final $headers = {'Authorization': authorization};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BuiltBeccaBotResponse, BuiltBeccaBotResponse>($request);
  }
}
