// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$FeedbackService extends FeedbackService {
  _$FeedbackService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = FeedbackService;

  Future<Response<BuiltFeedback>> postFeedback(
      String authorization, BuiltFeedback body) {
    final $url = '/feedback';
    final $headers = {'Authorization': authorization};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BuiltFeedback, BuiltFeedback>($request);
  }
}
