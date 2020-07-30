// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_sign_up.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltSignUp> _$builtSignUpSerializer = new _$BuiltSignUpSerializer();

class _$BuiltSignUpSerializer implements StructuredSerializer<BuiltSignUp> {
  @override
  final Iterable<Type> types = const [BuiltSignUp, _$BuiltSignUp];
  @override
  final String wireName = 'BuiltSignUp';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltSignUp object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'avatarTag',
      serializers.serialize(object.avatarTag,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltSignUp deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltSignUpBuilder();

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
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatarTag':
          result.avatarTag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltSignUp extends BuiltSignUp {
  @override
  final String email;
  @override
  final String username;
  @override
  final String password;
  @override
  final String avatarTag;

  factory _$BuiltSignUp([void Function(BuiltSignUpBuilder) updates]) =>
      (new BuiltSignUpBuilder()..update(updates)).build();

  _$BuiltSignUp._({this.email, this.username, this.password, this.avatarTag})
      : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('BuiltSignUp', 'email');
    }
    if (username == null) {
      throw new BuiltValueNullFieldError('BuiltSignUp', 'username');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('BuiltSignUp', 'password');
    }
    if (avatarTag == null) {
      throw new BuiltValueNullFieldError('BuiltSignUp', 'avatarTag');
    }
  }

  @override
  BuiltSignUp rebuild(void Function(BuiltSignUpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltSignUpBuilder toBuilder() => new BuiltSignUpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltSignUp &&
        email == other.email &&
        username == other.username &&
        password == other.password &&
        avatarTag == other.avatarTag;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, email.hashCode), username.hashCode), password.hashCode),
        avatarTag.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltSignUp')
          ..add('email', email)
          ..add('username', username)
          ..add('password', password)
          ..add('avatarTag', avatarTag))
        .toString();
  }
}

class BuiltSignUpBuilder implements Builder<BuiltSignUp, BuiltSignUpBuilder> {
  _$BuiltSignUp _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _avatarTag;
  String get avatarTag => _$this._avatarTag;
  set avatarTag(String avatarTag) => _$this._avatarTag = avatarTag;

  BuiltSignUpBuilder();

  BuiltSignUpBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _username = _$v.username;
      _password = _$v.password;
      _avatarTag = _$v.avatarTag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltSignUp other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltSignUp;
  }

  @override
  void update(void Function(BuiltSignUpBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltSignUp build() {
    final _$result = _$v ??
        new _$BuiltSignUp._(
            email: email,
            username: username,
            password: password,
            avatarTag: avatarTag);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
