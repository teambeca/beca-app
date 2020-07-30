import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'built_question_answer.g.dart';

abstract class BuiltQuestionAnswer
    implements Built<BuiltQuestionAnswer, BuiltQuestionAnswerBuilder> {
  @nullable
  String get questionId;
  @nullable
  int get type;
  @nullable
  BuiltList<String> get text;
  @nullable
  BuiltList<int> get answer;

  BuiltQuestionAnswer._();

  factory BuiltQuestionAnswer([updates(BuiltQuestionAnswerBuilder b)]) =
      _$BuiltQuestionAnswer;

  static Serializer<BuiltQuestionAnswer> get serializer =>
      _$builtQuestionAnswerSerializer;
}

// ignore_for_file: non_constant_identifier_names
