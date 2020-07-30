// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_question.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltQuestion> _$builtQuestionSerializer =
    new _$BuiltQuestionSerializer();

class _$BuiltQuestionSerializer implements StructuredSerializer<BuiltQuestion> {
  @override
  final Iterable<Type> types = const [BuiltQuestion, _$BuiltQuestion];
  @override
  final String wireName = 'BuiltQuestion';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltQuestion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'text',
      serializers.serialize(object.text,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(int)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltQuestion deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltQuestionBuilder();

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
        case 'text':
          result.text.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltQuestion extends BuiltQuestion {
  @override
  final String id;
  @override
  final BuiltList<String> text;
  @override
  final int type;

  factory _$BuiltQuestion([void Function(BuiltQuestionBuilder) updates]) =>
      (new BuiltQuestionBuilder()..update(updates)).build();

  _$BuiltQuestion._({this.id, this.text, this.type}) : super._() {
    if (text == null) {
      throw new BuiltValueNullFieldError('BuiltQuestion', 'text');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('BuiltQuestion', 'type');
    }
  }

  @override
  BuiltQuestion rebuild(void Function(BuiltQuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltQuestionBuilder toBuilder() => new BuiltQuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltQuestion &&
        id == other.id &&
        text == other.text &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), text.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltQuestion')
          ..add('id', id)
          ..add('text', text)
          ..add('type', type))
        .toString();
  }
}

class BuiltQuestionBuilder
    implements Builder<BuiltQuestion, BuiltQuestionBuilder> {
  _$BuiltQuestion _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  ListBuilder<String> _text;
  ListBuilder<String> get text => _$this._text ??= new ListBuilder<String>();
  set text(ListBuilder<String> text) => _$this._text = text;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  BuiltQuestionBuilder();

  BuiltQuestionBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _text = _$v.text?.toBuilder();
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltQuestion other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltQuestion;
  }

  @override
  void update(void Function(BuiltQuestionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltQuestion build() {
    _$BuiltQuestion _$result;
    try {
      _$result =
          _$v ?? new _$BuiltQuestion._(id: id, text: text.build(), type: type);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'text';
        text.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltQuestion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
