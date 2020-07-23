import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_auth.g.dart';

abstract class BuiltAuth implements Built<BuiltAuth, BuiltAuthBuilder> {
  String get access_token;
  String get role;
  String get token_type;
  int get expires_in;

  BuiltAuth._();

  factory BuiltAuth([updates(BuiltAuthBuilder b)]) = _$BuiltAuth;

  static Serializer<BuiltAuth> get serializer => _$builtAuthSerializer;
}

// ignore_for_file: non_constant_identifier_names
