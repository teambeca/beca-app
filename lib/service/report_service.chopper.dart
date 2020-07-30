// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ReportService extends ReportService {
  _$ReportService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ReportService;

  Future<Response<BuiltReport>> postReport(
      String authorization, BuiltReport body) {
    final $url = '/feedback/report/question';
    final $headers = {'Authorization': authorization};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BuiltReport, BuiltReport>($request);
  }
}
