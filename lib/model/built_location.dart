import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_location.g.dart';

abstract class BuiltLocation
    implements Built<BuiltLocation, BuiltLocationBuilder> {
  @nullable
  String get id;
  @nullable
  String get name;

  BuiltLocation._();

  factory BuiltLocation([updates(BuiltLocationBuilder b)]) = _$BuiltLocation;

  static Serializer<BuiltLocation> get serializer => _$builtLocationSerializer;
}

// ignore_for_file: non_constant_identifier_names
