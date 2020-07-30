import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_account.g.dart';

abstract class BuiltAccount
    implements Built<BuiltAccount, BuiltAccountBuilder> {
  @nullable
  String get avatarTag;
  @nullable
  String get username;
  @nullable
  String get password;
  @nullable
  String get role;
  @nullable
  int get place;
  @nullable
  int get score;
  @nullable
  int get creationDate;

  BuiltAccount._();

  factory BuiltAccount([updates(BuiltAccountBuilder b)]) = _$BuiltAccount;

  static Serializer<BuiltAccount> get serializer => _$builtAccountSerializer;
}

// ignore_for_file: non_constant_identifier_names
