// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_becca_bot_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltBeccaBotResponse> _$builtBeccaBotResponseSerializer =
    new _$BuiltBeccaBotResponseSerializer();

class _$BuiltBeccaBotResponseSerializer
    implements StructuredSerializer<BuiltBeccaBotResponse> {
  @override
  final Iterable<Type> types = const [
    BuiltBeccaBotResponse,
    _$BuiltBeccaBotResponse
  ];
  @override
  final String wireName = 'BuiltBeccaBotResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltBeccaBotResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.story != null) {
      result
        ..add('story')
        ..add(serializers.serialize(object.story,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltBeccaBotResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltBeccaBotResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'story':
          result.story = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltBeccaBotResponse extends BuiltBeccaBotResponse {
  @override
  final String story;

  factory _$BuiltBeccaBotResponse(
          [void Function(BuiltBeccaBotResponseBuilder) updates]) =>
      (new BuiltBeccaBotResponseBuilder()..update(updates)).build();

  _$BuiltBeccaBotResponse._({this.story}) : super._();

  @override
  BuiltBeccaBotResponse rebuild(
          void Function(BuiltBeccaBotResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltBeccaBotResponseBuilder toBuilder() =>
      new BuiltBeccaBotResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltBeccaBotResponse && story == other.story;
  }

  @override
  int get hashCode {
    return $jf($jc(0, story.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltBeccaBotResponse')
          ..add('story', story))
        .toString();
  }
}

class BuiltBeccaBotResponseBuilder
    implements Builder<BuiltBeccaBotResponse, BuiltBeccaBotResponseBuilder> {
  _$BuiltBeccaBotResponse _$v;

  String _story;
  String get story => _$this._story;
  set story(String story) => _$this._story = story;

  BuiltBeccaBotResponseBuilder();

  BuiltBeccaBotResponseBuilder get _$this {
    if (_$v != null) {
      _story = _$v.story;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltBeccaBotResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltBeccaBotResponse;
  }

  @override
  void update(void Function(BuiltBeccaBotResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltBeccaBotResponse build() {
    final _$result = _$v ?? new _$BuiltBeccaBotResponse._(story: story);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
