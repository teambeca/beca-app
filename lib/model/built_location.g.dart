// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltLocation> _$builtLocationSerializer =
    new _$BuiltLocationSerializer();

class _$BuiltLocationSerializer implements StructuredSerializer<BuiltLocation> {
  @override
  final Iterable<Type> types = const [BuiltLocation, _$BuiltLocation];
  @override
  final String wireName = 'BuiltLocation';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltLocation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltLocation deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltLocationBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltLocation extends BuiltLocation {
  @override
  final String id;
  @override
  final String name;

  factory _$BuiltLocation([void Function(BuiltLocationBuilder) updates]) =>
      (new BuiltLocationBuilder()..update(updates)).build();

  _$BuiltLocation._({this.id, this.name}) : super._();

  @override
  BuiltLocation rebuild(void Function(BuiltLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltLocationBuilder toBuilder() => new BuiltLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltLocation && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltLocation')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class BuiltLocationBuilder
    implements Builder<BuiltLocation, BuiltLocationBuilder> {
  _$BuiltLocation _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  BuiltLocationBuilder();

  BuiltLocationBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltLocation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltLocation;
  }

  @override
  void update(void Function(BuiltLocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltLocation build() {
    final _$result = _$v ?? new _$BuiltLocation._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
