import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_becca_bot_response.g.dart';

abstract class BuiltBeccaBotResponse
    implements Built<BuiltBeccaBotResponse, BuiltBeccaBotResponseBuilder> {
  @nullable
  String get story;

  BuiltBeccaBotResponse._();

  factory BuiltBeccaBotResponse([updates(BuiltBeccaBotResponseBuilder b)]) =
      _$BuiltBeccaBotResponse;

  static Serializer<BuiltBeccaBotResponse> get serializer =>
      _$builtBeccaBotResponseSerializer;
}

// ignore_for_file: non_constant_identifier_names
