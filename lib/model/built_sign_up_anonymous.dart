import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_sign_up_anonymous.g.dart';

abstract class BuiltSignUpAnonymous
    implements Built<BuiltSignUpAnonymous, BuiltSignUpAnonymousBuilder> {
  String get avatarTag;

  BuiltSignUpAnonymous._();

  factory BuiltSignUpAnonymous([updates(BuiltSignUpAnonymousBuilder b)]) =
      _$BuiltSignUpAnonymous;

  static Serializer<BuiltSignUpAnonymous> get serializer =>
      _$builtSignUpAnonymousSerializer;
}
