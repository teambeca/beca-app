// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltAccount> _$builtAccountSerializer =
    new _$BuiltAccountSerializer();

class _$BuiltAccountSerializer implements StructuredSerializer<BuiltAccount> {
  @override
  final Iterable<Type> types = const [BuiltAccount, _$BuiltAccount];
  @override
  final String wireName = 'BuiltAccount';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltAccount object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.avatarTag != null) {
      result
        ..add('avatarTag')
        ..add(serializers.serialize(object.avatarTag,
            specifiedType: const FullType(String)));
    }
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    if (object.password != null) {
      result
        ..add('password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }
    if (object.role != null) {
      result
        ..add('role')
        ..add(serializers.serialize(object.role,
            specifiedType: const FullType(String)));
    }
    if (object.place != null) {
      result
        ..add('place')
        ..add(serializers.serialize(object.place,
            specifiedType: const FullType(int)));
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
    return result;
  }

  @override
  BuiltAccount deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltAccountBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'avatarTag':
          result.avatarTag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'place':
          result.place = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'creationDate':
          result.creationDate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltAccount extends BuiltAccount {
  @override
  final String avatarTag;
  @override
  final String username;
  @override
  final String password;
  @override
  final String role;
  @override
  final int place;
  @override
  final int score;
  @override
  final int creationDate;

  factory _$BuiltAccount([void Function(BuiltAccountBuilder) updates]) =>
      (new BuiltAccountBuilder()..update(updates)).build();

  _$BuiltAccount._(
      {this.avatarTag,
      this.username,
      this.password,
      this.role,
      this.place,
      this.score,
      this.creationDate})
      : super._();

  @override
  BuiltAccount rebuild(void Function(BuiltAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltAccountBuilder toBuilder() => new BuiltAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltAccount &&
        avatarTag == other.avatarTag &&
        username == other.username &&
        password == other.password &&
        role == other.role &&
        place == other.place &&
        score == other.score &&
        creationDate == other.creationDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, avatarTag.hashCode), username.hashCode),
                        password.hashCode),
                    role.hashCode),
                place.hashCode),
            score.hashCode),
        creationDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltAccount')
          ..add('avatarTag', avatarTag)
          ..add('username', username)
          ..add('password', password)
          ..add('role', role)
          ..add('place', place)
          ..add('score', score)
          ..add('creationDate', creationDate))
        .toString();
  }
}

class BuiltAccountBuilder
    implements Builder<BuiltAccount, BuiltAccountBuilder> {
  _$BuiltAccount _$v;

  String _avatarTag;
  String get avatarTag => _$this._avatarTag;
  set avatarTag(String avatarTag) => _$this._avatarTag = avatarTag;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _role;
  String get role => _$this._role;
  set role(String role) => _$this._role = role;

  int _place;
  int get place => _$this._place;
  set place(int place) => _$this._place = place;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  int _creationDate;
  int get creationDate => _$this._creationDate;
  set creationDate(int creationDate) => _$this._creationDate = creationDate;

  BuiltAccountBuilder();

  BuiltAccountBuilder get _$this {
    if (_$v != null) {
      _avatarTag = _$v.avatarTag;
      _username = _$v.username;
      _password = _$v.password;
      _role = _$v.role;
      _place = _$v.place;
      _score = _$v.score;
      _creationDate = _$v.creationDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltAccount other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltAccount;
  }

  @override
  void update(void Function(BuiltAccountBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltAccount build() {
    final _$result = _$v ??
        new _$BuiltAccount._(
            avatarTag: avatarTag,
            username: username,
            password: password,
            role: role,
            place: place,
            score: score,
            creationDate: creationDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
