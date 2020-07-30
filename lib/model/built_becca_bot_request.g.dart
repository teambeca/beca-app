// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_becca_bot_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltBeccaBotRequest> _$builtBeccaBotRequestSerializer =
    new _$BuiltBeccaBotRequestSerializer();

class _$BuiltBeccaBotRequestSerializer
    implements StructuredSerializer<BuiltBeccaBotRequest> {
  @override
  final Iterable<Type> types = const [
    BuiltBeccaBotRequest,
    _$BuiltBeccaBotRequest
  ];
  @override
  final String wireName = 'BuiltBeccaBotRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltBeccaBotRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltBeccaBotRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltBeccaBotRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltBeccaBotRequest extends BuiltBeccaBotRequest {
  @override
  final String message;

  factory _$BuiltBeccaBotRequest(
          [void Function(BuiltBeccaBotRequestBuilder) updates]) =>
      (new BuiltBeccaBotRequestBuilder()..update(updates)).build();

  _$BuiltBeccaBotRequest._({this.message}) : super._();

  @override
  BuiltBeccaBotRequest rebuild(
          void Function(BuiltBeccaBotRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltBeccaBotRequestBuilder toBuilder() =>
      new BuiltBeccaBotRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltBeccaBotRequest && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltBeccaBotRequest')
          ..add('message', message))
        .toString();
  }
}

class BuiltBeccaBotRequestBuilder
    implements Builder<BuiltBeccaBotRequest, BuiltBeccaBotRequestBuilder> {
  _$BuiltBeccaBotRequest _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  BuiltBeccaBotRequestBuilder();

  BuiltBeccaBotRequestBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltBeccaBotRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltBeccaBotRequest;
  }

  @override
  void update(void Function(BuiltBeccaBotRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltBeccaBotRequest build() {
    final _$result = _$v ?? new _$BuiltBeccaBotRequest._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
