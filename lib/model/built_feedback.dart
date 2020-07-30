import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_feedback.g.dart';

abstract class BuiltFeedback
    implements Built<BuiltFeedback, BuiltFeedbackBuilder> {
  @nullable
  String get id;
  @nullable
  String get userId;
  @nullable
  String get type;
  String get message;
  @nullable
  int get creationDate;

  BuiltFeedback._();

  factory BuiltFeedback([updates(BuiltFeedbackBuilder b)]) = _$BuiltFeedback;

  static Serializer<BuiltFeedback> get serializer => _$builtFeedbackSerializer;
}

// ignore_for_file: non_constant_identifier_names
