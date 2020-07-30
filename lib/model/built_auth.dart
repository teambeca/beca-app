import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_auth.g.dart';

abstract class BuiltAuth implements Built<BuiltAuth, BuiltAuthBuilder> {
  @BuiltValueField(wireName: 'access_token')
  String get accessToken;
  String get role;
  @BuiltValueField(wireName: 'token_type')
  String get tokenType;
  @BuiltValueField(wireName: 'expires_in')
  int get expiresIn;

  BuiltAuth._();

  factory BuiltAuth([updates(BuiltAuthBuilder b)]) = _$BuiltAuth;

  static Serializer<BuiltAuth> get serializer => _$builtAuthSerializer;
}

// ignore_for_file: non_constant_identifier_names
