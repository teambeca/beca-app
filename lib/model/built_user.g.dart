// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltUser> _$builtUserSerializer = new _$BuiltUserSerializer();

class _$BuiltUserSerializer implements StructuredSerializer<BuiltUser> {
  @override
  final Iterable<Type> types = const [BuiltUser, _$BuiltUser];
  @override
  final String wireName = 'BuiltUser';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    if (object.avatarTag != null) {
      result
        ..add('avatarTag')
        ..add(serializers.serialize(object.avatarTag,
            specifiedType: const FullType(String)));
    }
    if (object.role != null) {
      result
        ..add('role')
        ..add(serializers.serialize(object.role,
            specifiedType: const FullType(String)));
    }
    if (object.active != null) {
      result
        ..add('active')
        ..add(serializers.serialize(object.active,
            specifiedType: const FullType(bool)));
    }
    if (object.score != null) {
      result
        ..add('score')
        ..add(serializers.serialize(object.score,
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
  BuiltUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatarTag':
          result.avatarTag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
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

class _$BuiltUser extends BuiltUser {
  @override
  final String id;
  @override
  final String username;
  @override
  final String avatarTag;
  @override
  final String role;
  @override
  final bool active;
  @override
  final int score;
  @override
  final int creationDate;
  @override
  final int updatedDate;

  factory _$BuiltUser([void Function(BuiltUserBuilder) updates]) =>
      (new BuiltUserBuilder()..update(updates)).build();

  _$BuiltUser._(
      {this.id,
      this.username,
      this.avatarTag,
      this.role,
      this.active,
      this.score,
      this.creationDate,
      this.updatedDate})
      : super._();

  @override
  BuiltUser rebuild(void Function(BuiltUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltUserBuilder toBuilder() => new BuiltUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltUser &&
        id == other.id &&
        username == other.username &&
        avatarTag == other.avatarTag &&
        role == other.role &&
        active == other.active &&
        score == other.score &&
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
                        $jc($jc($jc(0, id.hashCode), username.hashCode),
                            avatarTag.hashCode),
                        role.hashCode),
                    active.hashCode),
                score.hashCode),
            creationDate.hashCode),
        updatedDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltUser')
          ..add('id', id)
          ..add('username', username)
          ..add('avatarTag', avatarTag)
          ..add('role', role)
          ..add('active', active)
          ..add('score', score)
          ..add('creationDate', creationDate)
          ..add('updatedDate', updatedDate))
        .toString();
  }
}

class BuiltUserBuilder implements Builder<BuiltUser, BuiltUserBuilder> {
  _$BuiltUser _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _avatarTag;
  String get avatarTag => _$this._avatarTag;
  set avatarTag(String avatarTag) => _$this._avatarTag = avatarTag;

  String _role;
  String get role => _$this._role;
  set role(String role) => _$this._role = role;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  int _creationDate;
  int get creationDate => _$this._creationDate;
  set creationDate(int creationDate) => _$this._creationDate = creationDate;

  int _updatedDate;
  int get updatedDate => _$this._updatedDate;
  set updatedDate(int updatedDate) => _$this._updatedDate = updatedDate;

  BuiltUserBuilder();

  BuiltUserBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _username = _$v.username;
      _avatarTag = _$v.avatarTag;
      _role = _$v.role;
      _active = _$v.active;
      _score = _$v.score;
      _creationDate = _$v.creationDate;
      _updatedDate = _$v.updatedDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltUser;
  }

  @override
  void update(void Function(BuiltUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltUser build() {
    final _$result = _$v ??
        new _$BuiltUser._(
            id: id,
            username: username,
            avatarTag: avatarTag,
            role: role,
            active: active,
            score: score,
            creationDate: creationDate,
            updatedDate: updatedDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
