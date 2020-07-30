import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_sign_up.g.dart';

abstract class BuiltSignUp implements Built<BuiltSignUp, BuiltSignUpBuilder> {
  String get email;
  String get username;
  String get password;
  String get avatarTag;

  BuiltSignUp._();

  factory BuiltSignUp([updates(BuiltSignUpBuilder b)]) = _$BuiltSignUp;

  static Serializer<BuiltSignUp> get serializer => _$builtSignUpSerializer;
}
