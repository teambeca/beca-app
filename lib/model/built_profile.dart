import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_profile.g.dart';

abstract class BuiltProfile
    implements Built<BuiltProfile, BuiltProfileBuilder> {
  @nullable
  String get email;
  @nullable
  String get imageURL;
  @nullable
  // @BuiltValueField(wireName: 'full_name')
  String get fullName;
  @nullable
  String get job;
  @nullable
  String get cityId;
  @nullable
  int get gender;
  @nullable
  int get age;
  @nullable
  int get creationDate;
  @nullable
  int get updatedDate;

  BuiltProfile._();

  factory BuiltProfile([updates(BuiltProfileBuilder b)]) = _$BuiltProfile;

  static Serializer<BuiltProfile> get serializer => _$builtProfileSerializer;
}

// ignore_for_file: non_constant_identifier_names
