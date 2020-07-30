import 'package:beca_app/model/built_becca_bot_request.dart';
import 'package:beca_app/model/built_becca_bot_response.dart';
import 'package:beca_app/model/built_location.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beca_app/model/built_account.dart';
import 'package:beca_app/model/built_answer.dart';
import 'package:beca_app/model/built_auth.dart';
import 'package:beca_app/model/built_feedback.dart';
import 'package:beca_app/model/built_profile.dart';
import 'package:beca_app/model/built_question.dart';
import 'package:beca_app/model/built_question_answer.dart';
import 'package:beca_app/model/built_report.dart';
import 'package:beca_app/model/built_sign_in.dart';
import 'package:beca_app/model/built_sign_up.dart';
import 'package:beca_app/model/built_user.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  BuiltAuth,
  BuiltSignIn,
  BuiltSignUp,
  BuiltUser,
  BuiltProfile,
  BuiltAccount,
  BuiltReport,
  BuiltFeedback,
  BuiltQuestion,
  BuiltAnswer,
  BuiltQuestionAnswer,
  BuiltLocation,
  BuiltBeccaBotRequest,
  BuiltBeccaBotResponse,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
