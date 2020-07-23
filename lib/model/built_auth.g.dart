// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_auth.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltAuth> _$builtAuthSerializer = new _$BuiltAuthSerializer();

class _$BuiltAuthSerializer implements StructuredSerializer<BuiltAuth> {
  @override
  final Iterable<Type> types = const [BuiltAuth, _$BuiltAuth];
  @override
  final String wireName = 'BuiltAuth';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltAuth object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'access_token',
      serializers.serialize(object.access_token,
          specifiedType: const FullType(String)),
      'role',
      serializers.serialize(object.role, specifiedType: const FullType(String)),
      'token_type',
      serializers.serialize(object.token_type,
          specifiedType: const FullType(String)),
      'expires_in',
      serializers.serialize(object.expires_in,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  BuiltAuth deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltAuthBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'access_token':
          result.access_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'token_type':
          result.token_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expires_in':
          result.expires_in = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltAuth extends BuiltAuth {
  @override
  final String access_token;
  @override
  final String role;
  @override
  final String token_type;
  @override
  final int expires_in;

  factory _$BuiltAuth([void Function(BuiltAuthBuilder) updates]) =>
      (new BuiltAuthBuilder()..update(updates)).build();

  _$BuiltAuth._(
      {this.access_token, this.role, this.token_type, this.expires_in})
      : super._() {
    if (access_token == null) {
      throw new BuiltValueNullFieldError('BuiltAuth', 'access_token');
    }
    if (role == null) {
      throw new BuiltValueNullFieldError('BuiltAuth', 'role');
    }
    if (token_type == null) {
      throw new BuiltValueNullFieldError('BuiltAuth', 'token_type');
    }
    if (expires_in == null) {
      throw new BuiltValueNullFieldError('BuiltAuth', 'expires_in');
    }
  }

  @override
  BuiltAuth rebuild(void Function(BuiltAuthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltAuthBuilder toBuilder() => new BuiltAuthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltAuth &&
        access_token == other.access_token &&
        role == other.role &&
        token_type == other.token_type &&
        expires_in == other.expires_in;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, access_token.hashCode), role.hashCode),
            token_type.hashCode),
        expires_in.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltAuth')
          ..add('access_token', access_token)
          ..add('role', role)
          ..add('token_type', token_type)
          ..add('expires_in', expires_in))
        .toString();
  }
}

class BuiltAuthBuilder implements Builder<BuiltAuth, BuiltAuthBuilder> {
  _$BuiltAuth _$v;

  String _access_token;
  String get access_token => _$this._access_token;
  set access_token(String access_token) => _$this._access_token = access_token;

  String _role;
  String get role => _$this._role;
  set role(String role) => _$this._role = role;

  String _token_type;
  String get token_type => _$this._token_type;
  set token_type(String token_type) => _$this._token_type = token_type;

  int _expires_in;
  int get expires_in => _$this._expires_in;
  set expires_in(int expires_in) => _$this._expires_in = expires_in;

  BuiltAuthBuilder();

  BuiltAuthBuilder get _$this {
    if (_$v != null) {
      _access_token = _$v.access_token;
      _role = _$v.role;
      _token_type = _$v.token_type;
      _expires_in = _$v.expires_in;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltAuth other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltAuth;
  }

  @override
  void update(void Function(BuiltAuthBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltAuth build() {
    final _$result = _$v ??
        new _$BuiltAuth._(
            access_token: access_token,
            role: role,
            token_type: token_type,
            expires_in: expires_in);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
// ignore_for_file: non_constant_identifier_names
