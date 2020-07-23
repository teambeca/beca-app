import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_sign_in.g.dart';

abstract class BuiltSignIn implements Built<BuiltSignIn, BuiltSignInBuilder> {
  String get username;
  String get password;

  BuiltSignIn._();

  factory BuiltSignIn([updates(BuiltSignInBuilder b)]) = _$BuiltSignIn;

  static Serializer<BuiltSignIn> get serializer => _$builtSignInSerializer;
}
