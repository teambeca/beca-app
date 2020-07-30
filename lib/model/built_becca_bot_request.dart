import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_becca_bot_request.g.dart';

abstract class BuiltBeccaBotRequest
    implements Built<BuiltBeccaBotRequest, BuiltBeccaBotRequestBuilder> {
  @nullable
  String get message;

  BuiltBeccaBotRequest._();

  factory BuiltBeccaBotRequest([updates(BuiltBeccaBotRequestBuilder b)]) =
      _$BuiltBeccaBotRequest;

  static Serializer<BuiltBeccaBotRequest> get serializer =>
      _$builtBeccaBotRequestSerializer;
}

// ignore_for_file: non_constant_identifier_names
