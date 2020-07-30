// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltProfile> _$builtProfileSerializer =
    new _$BuiltProfileSerializer();

class _$BuiltProfileSerializer implements StructuredSerializer<BuiltProfile> {
  @override
  final Iterable<Type> types = const [BuiltProfile, _$BuiltProfile];
  @override
  final String wireName = 'BuiltProfile';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltProfile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.imageURL != null) {
      result
        ..add('imageURL')
        ..add(serializers.serialize(object.imageURL,
            specifiedType: const FullType(String)));
    }
    if (object.fullName != null) {
      result
        ..add('fullName')
        ..add(serializers.serialize(object.fullName,
            specifiedType: const FullType(String)));
    }
    if (object.job != null) {
      result
        ..add('job')
        ..add(serializers.serialize(object.job,
            specifiedType: const FullType(String)));
    }
    if (object.cityId != null) {
      result
        ..add('cityId')
        ..add(serializers.serialize(object.cityId,
            specifiedType: const FullType(String)));
    }
    if (object.gender != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(object.gender,
            specifiedType: const FullType(int)));
    }
    if (object.age != null) {
      result
        ..add('age')
        ..add(serializers.serialize(object.age,
            specifiedType: const FullType(int)));
    }
    if (object.creationDate != null) {
      result
        ..add('creationDate')
        ..add(serializers.serialize(object.creationDate,
            specifiedType: const FullType(int)));
    }
    if (object.updatedDate != null) {
      result
        ..add('updatedDate')
        ..add(serializers.serialize(object.updatedDate,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BuiltProfile deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltProfileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageURL':
          result.imageURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'job':
          result.job = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cityId':
          result.cityId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'creationDate':
          result.creationDate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'updatedDate':
          result.updatedDate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltProfile extends BuiltProfile {
  @override
  final String email;
  @override
  final String imageURL;
  @override
  final String fullName;
  @override
  final String job;
  @override
  final String cityId;
  @override
  final int gender;
  @override
  final int age;
  @override
  final int creationDate;
  @override
  final int updatedDate;

  factory _$BuiltProfile([void Function(BuiltProfileBuilder) updates]) =>
      (new BuiltProfileBuilder()..update(updates)).build();

  _$BuiltProfile._(
      {this.email,
      this.imageURL,
      this.fullName,
      this.job,
      this.cityId,
      this.gender,
      this.age,
      this.creationDate,
      this.updatedDate})
      : super._();

  @override
  BuiltProfile rebuild(void Function(BuiltProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltProfileBuilder toBuilder() => new BuiltProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltProfile &&
        email == other.email &&
        imageURL == other.imageURL &&
        fullName == other.fullName &&
        job == other.job &&
        cityId == other.cityId &&
        gender == other.gender &&
        age == other.age &&
        creationDate == other.creationDate &&
        updatedDate == other.updatedDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, email.hashCode), imageURL.hashCode),
                                fullName.hashCode),
                            job.hashCode),
                        cityId.hashCode),
                    gender.hashCode),
                age.hashCode),
            creationDate.hashCode),
        updatedDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltProfile')
          ..add('email', email)
          ..add('imageURL', imageURL)
          ..add('fullName', fullName)
          ..add('job', job)
          ..add('cityId', cityId)
          ..add('gender', gender)
          ..add('age', age)
          ..add('creationDate', creationDate)
          ..add('updatedDate', updatedDate))
        .toString();
  }
}

class BuiltProfileBuilder
    implements Builder<BuiltProfile, BuiltProfileBuilder> {
  _$BuiltProfile _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _imageURL;
  String get imageURL => _$this._imageURL;
  set imageURL(String imageURL) => _$this._imageURL = imageURL;

  String _fullName;
  String get fullName => _$this._fullName;
  set fullName(String fullName) => _$this._fullName = fullName;

  String _job;
  String get job => _$this._job;
  set job(String job) => _$this._job = job;

  String _cityId;
  String get cityId => _$this._cityId;
  set cityId(String cityId) => _$this._cityId = cityId;

  int _gender;
  int get gender => _$this._gender;
  set gender(int gender) => _$this._gender = gender;

  int _age;
  int get age => _$this._age;
  set age(int age) => _$this._age = age;

  int _creationDate;
  int get creationDate => _$this._creationDate;
  set creationDate(int creationDate) => _$this._creationDate = creationDate;

  int _updatedDate;
  int get updatedDate => _$this._updatedDate;
  set updatedDate(int updatedDate) => _$this._updatedDate = updatedDate;

  BuiltProfileBuilder();

  BuiltProfileBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _imageURL = _$v.imageURL;
      _fullName = _$v.fullName;
      _job = _$v.job;
      _cityId = _$v.cityId;
      _gender = _$v.gender;
      _age = _$v.age;
      _creationDate = _$v.creationDate;
      _updatedDate = _$v.updatedDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltProfile other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltProfile;
  }

  @override
  void update(void Function(BuiltProfileBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltProfile build() {
    final _$result = _$v ??
        new _$BuiltProfile._(
            email: email,
            imageURL: imageURL,
            fullName: fullName,
            job: job,
            cityId: cityId,
            gender: gender,
            age: age,
            creationDate: creationDate,
            updatedDate: updatedDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
