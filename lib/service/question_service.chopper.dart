// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$QuestionService extends QuestionService {
  _$QuestionService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = QuestionService;

  Future<Response<BuiltQuestion>> getQuestionRandom(String authorization) {
    final $url = '/question';
    final $headers = {'Authorization': authorization};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BuiltQuestion, BuiltQuestion>($request);
  }

  Future<Response<BuiltQuestion>> getQuestionByType(
      String authorization, int questionType) {
    final $url = '/question/by/type/${questionType}';
    final $headers = {'Authorization': authorization};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BuiltQuestion, BuiltQuestion>($request);
  }

  Future<Response<BuiltAnswer>> postAnswer(
      String authorization, BuiltQuestionAnswer body) {
    final $url = '/question';
    final $headers = {'Authorization': authorization};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BuiltAnswer, BuiltAnswer>($request);
  }
}
