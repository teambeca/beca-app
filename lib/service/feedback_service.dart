import 'package:beca_app/model/built_feedback.dart';
import 'package:beca_app/model/built_value_converter.dart';
import 'package:chopper/chopper.dart';

part 'feedback_service.chopper.dart';

@ChopperApi(baseUrl: "/feedback")
abstract class FeedbackService extends ChopperService {
  static FeedbackService create() {
    final client = ChopperClient(
        baseUrl: "https://beca-api.herokuapp.com",
        services: [
          _$FeedbackService(),
        ],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
        ]);
    return _$FeedbackService(client);
  }

  @Post()
  Future<Response<BuiltFeedback>> postFeedback(
    @Header('Authorization') String authorization,
    @Body() BuiltFeedback body,
  );
}
