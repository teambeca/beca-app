import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'built_answer.g.dart';

abstract class BuiltAnswer implements Built<BuiltAnswer, BuiltAnswerBuilder> {
  @nullable
  String get id;
  @nullable
  String get userId;
  @nullable
  String get questionId;
  @nullable
  int get type;
  @nullable
  int get creationDate;
  @nullable
  BuiltList<int> get answer;

  BuiltAnswer._();

  factory BuiltAnswer([updates(BuiltAnswerBuilder b)]) = _$BuiltAnswer;

  static Serializer<BuiltAnswer> get serializer => _$builtAnswerSerializer;
}

// ignore_for_file: non_constant_identifier_names
