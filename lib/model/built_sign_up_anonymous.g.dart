// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_sign_up_anonymous.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltSignUpAnonymous> _$builtSignUpAnonymousSerializer =
    new _$BuiltSignUpAnonymousSerializer();

class _$BuiltSignUpAnonymousSerializer
    implements StructuredSerializer<BuiltSignUpAnonymous> {
  @override
  final Iterable<Type> types = const [
    BuiltSignUpAnonymous,
    _$BuiltSignUpAnonymous
  ];
  @override
  final String wireName = 'BuiltSignUpAnonymous';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltSignUpAnonymous object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'avatarTag',
      serializers.serialize(object.avatarTag,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltSignUpAnonymous deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltSignUpAnonymousBuilder();

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
      }
    }

    return result.build();
  }
}

class _$BuiltSignUpAnonymous extends BuiltSignUpAnonymous {
  @override
  final String avatarTag;

  factory _$BuiltSignUpAnonymous(
          [void Function(BuiltSignUpAnonymousBuilder) updates]) =>
      (new BuiltSignUpAnonymousBuilder()..update(updates)).build();

  _$BuiltSignUpAnonymous._({this.avatarTag}) : super._() {
    if (avatarTag == null) {
      throw new BuiltValueNullFieldError('BuiltSignUpAnonymous', 'avatarTag');
    }
  }

  @override
  BuiltSignUpAnonymous rebuild(
          void Function(BuiltSignUpAnonymousBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltSignUpAnonymousBuilder toBuilder() =>
      new BuiltSignUpAnonymousBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltSignUpAnonymous && avatarTag == other.avatarTag;
  }

  @override
  int get hashCode {
    return $jf($jc(0, avatarTag.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltSignUpAnonymous')
          ..add('avatarTag', avatarTag))
        .toString();
  }
}

class BuiltSignUpAnonymousBuilder
    implements Builder<BuiltSignUpAnonymous, BuiltSignUpAnonymousBuilder> {
  _$BuiltSignUpAnonymous _$v;

  String _avatarTag;
  String get avatarTag => _$this._avatarTag;
  set avatarTag(String avatarTag) => _$this._avatarTag = avatarTag;

  BuiltSignUpAnonymousBuilder();

  BuiltSignUpAnonymousBuilder get _$this {
    if (_$v != null) {
      _avatarTag = _$v.avatarTag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltSignUpAnonymous other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltSignUpAnonymous;
  }

  @override
  void update(void Function(BuiltSignUpAnonymousBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltSignUpAnonymous build() {
    final _$result = _$v ?? new _$BuiltSignUpAnonymous._(avatarTag: avatarTag);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
