import 'package:beca_app/model/built_answer.dart';
import 'package:beca_app/model/built_question.dart';
import 'package:beca_app/model/built_question_answer.dart';
import 'package:beca_app/model/built_value_converter.dart';
import 'package:beca_app/utils/constants.dart';
import 'package:chopper/chopper.dart';

part 'question_service.chopper.dart';

@ChopperApi(baseUrl: "/question")
abstract class QuestionService extends ChopperService {
  static QuestionService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [
          _$QuestionService(),
        ],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
        ]);
    return _$QuestionService(client);
  }

  @Get()
  Future<Response<BuiltQuestion>> getQuestionRandom(
    @Header('Authorization') String authorization,
  );

  @Get(path: "/by/type/{questionType}")
  Future<Response<BuiltQuestion>> getQuestionByType(
    @Header('Authorization') String authorization,
    @Path() int questionType,
  );

  @Post()
  Future<Response<BuiltAnswer>> postAnswer(
    @Header('Authorization') String authorization,
    @Body() BuiltQuestionAnswer body,
  );
}
