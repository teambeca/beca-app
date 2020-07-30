import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_report.g.dart';

abstract class BuiltReport implements Built<BuiltReport, BuiltReportBuilder> {
  @nullable
  String get id;
  @nullable
  String get userId;
  @nullable
  String get questionId;
  @nullable
  String get type;
  String get message;
  @nullable
  int get creationDate;

  BuiltReport._();

  factory BuiltReport([updates(BuiltReportBuilder b)]) = _$BuiltReport;

  static Serializer<BuiltReport> get serializer => _$builtReportSerializer;
}

// ignore_for_file: non_constant_identifier_names
