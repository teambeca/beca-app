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
      serializers.serialize(object.accessToken,
          specifiedType: const FullType(String)),
      'role',
      serializers.serialize(object.role, specifiedType: const FullType(String)),
      'token_type',
      serializers.serialize(object.tokenType,
          specifiedType: const FullType(String)),
      'expires_in',
      serializers.serialize(object.expiresIn,
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
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'token_type':
          result.tokenType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expires_in':
          result.expiresIn = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltAuth extends BuiltAuth {
  @override
  final String accessToken;
  @override
  final String role;
  @override
  final String tokenType;
  @override
  final int expiresIn;

  factory _$BuiltAuth([void Function(BuiltAuthBuilder) updates]) =>
      (new BuiltAuthBuilder()..update(updates)).build();

  _$BuiltAuth._({this.accessToken, this.role, this.tokenType, this.expiresIn})
      : super._() {
    if (accessToken == null) {
      throw new BuiltValueNullFieldError('BuiltAuth', 'accessToken');
    }
    if (role == null) {
      throw new BuiltValueNullFieldError('BuiltAuth', 'role');
    }
    if (tokenType == null) {
      throw new BuiltValueNullFieldError('BuiltAuth', 'tokenType');
    }
    if (expiresIn == null) {
      throw new BuiltValueNullFieldError('BuiltAuth', 'expiresIn');
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
        accessToken == other.accessToken &&
        role == other.role &&
        tokenType == other.tokenType &&
        expiresIn == other.expiresIn;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, accessToken.hashCode), role.hashCode),
            tokenType.hashCode),
        expiresIn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltAuth')
          ..add('accessToken', accessToken)
          ..add('role', role)
          ..add('tokenType', tokenType)
          ..add('expiresIn', expiresIn))
        .toString();
  }
}

class BuiltAuthBuilder implements Builder<BuiltAuth, BuiltAuthBuilder> {
  _$BuiltAuth _$v;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  String _role;
  String get role => _$this._role;
  set role(String role) => _$this._role = role;

  String _tokenType;
  String get tokenType => _$this._tokenType;
  set tokenType(String tokenType) => _$this._tokenType = tokenType;

  int _expiresIn;
  int get expiresIn => _$this._expiresIn;
  set expiresIn(int expiresIn) => _$this._expiresIn = expiresIn;

  BuiltAuthBuilder();

  BuiltAuthBuilder get _$this {
    if (_$v != null) {
      _accessToken = _$v.accessToken;
      _role = _$v.role;
      _tokenType = _$v.tokenType;
      _expiresIn = _$v.expiresIn;
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
            accessToken: accessToken,
            role: role,
            tokenType: tokenType,
            expiresIn: expiresIn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
