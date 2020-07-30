import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_user.g.dart';

abstract class BuiltUser implements Built<BuiltUser, BuiltUserBuilder> {
  @nullable
  String get id;
  @nullable
  String get username;
  @nullable
  String get avatarTag;
  @nullable
  //TODO: User Password ?
  // @nullable
  // String get password;
  @nullable
  String get role;
  @nullable
  bool get active;
  @nullable
  int get score;
  @nullable
  int get creationDate;
  @nullable
  int get updatedDate;

  BuiltUser._();

  factory BuiltUser([updates(BuiltUserBuilder b)]) = _$BuiltUser;

  static Serializer<BuiltUser> get serializer => _$builtUserSerializer;
}

// ignore_for_file: non_constant_identifier_names
