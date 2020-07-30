import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'built_question.g.dart';

abstract class BuiltQuestion
    implements Built<BuiltQuestion, BuiltQuestionBuilder> {
  @nullable
  String get id;
  BuiltList<String> get text;
  int get type;

  BuiltQuestion._();

  factory BuiltQuestion([updates(BuiltQuestionBuilder b)]) = _$BuiltQuestion;

  static Serializer<BuiltQuestion> get serializer => _$builtQuestionSerializer;
}

// ignore_for_file: non_constant_identifier_names
