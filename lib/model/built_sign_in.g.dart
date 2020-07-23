// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_sign_in.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltSignIn> _$builtSignInSerializer = new _$BuiltSignInSerializer();

class _$BuiltSignInSerializer implements StructuredSerializer<BuiltSignIn> {
  @override
  final Iterable<Type> types = const [BuiltSignIn, _$BuiltSignIn];
  @override
  final String wireName = 'BuiltSignIn';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltSignIn object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltSignIn deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltSignInBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltSignIn extends BuiltSignIn {
  @override
  final String username;
  @override
  final String password;

  factory _$BuiltSignIn([void Function(BuiltSignInBuilder) updates]) =>
      (new BuiltSignInBuilder()..update(updates)).build();

  _$BuiltSignIn._({this.username, this.password}) : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('BuiltSignIn', 'username');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('BuiltSignIn', 'password');
    }
  }

  @override
  BuiltSignIn rebuild(void Function(BuiltSignInBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltSignInBuilder toBuilder() => new BuiltSignInBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltSignIn &&
        username == other.username &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, username.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltSignIn')
          ..add('username', username)
          ..add('password', password))
        .toString();
  }
}

class BuiltSignInBuilder implements Builder<BuiltSignIn, BuiltSignInBuilder> {
  _$BuiltSignIn _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  BuiltSignInBuilder();

  BuiltSignInBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltSignIn other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltSignIn;
  }

  @override
  void update(void Function(BuiltSignInBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltSignIn build() {
    final _$result =
        _$v ?? new _$BuiltSignIn._(username: username, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
