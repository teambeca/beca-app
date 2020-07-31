import 'package:beca_app/model/built_report.dart';
import 'package:beca_app/model/built_value_converter.dart';
import 'package:beca_app/utils/constants.dart';
import 'package:chopper/chopper.dart';

part 'report_service.chopper.dart';

@ChopperApi(baseUrl: "/feedback/report/question")
abstract class ReportService extends ChopperService {
  static ReportService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [
          _$ReportService(),
        ],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
        ]);
    return _$ReportService(client);
  }

  @Post()
  Future<Response<BuiltReport>> postReport(
    @Header('Authorization') String authorization,
    @Body() BuiltReport body,
  );
}
