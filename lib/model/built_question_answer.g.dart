// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_question_answer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltQuestionAnswer> _$builtQuestionAnswerSerializer =
    new _$BuiltQuestionAnswerSerializer();

class _$BuiltQuestionAnswerSerializer
    implements StructuredSerializer<BuiltQuestionAnswer> {
  @override
  final Iterable<Type> types = const [
    BuiltQuestionAnswer,
    _$BuiltQuestionAnswer
  ];
  @override
  final String wireName = 'BuiltQuestionAnswer';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltQuestionAnswer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.questionId != null) {
      result
        ..add('questionId')
        ..add(serializers.serialize(object.questionId,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(int)));
    }
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.answer != null) {
      result
        ..add('answer')
        ..add(serializers.serialize(object.answer,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  BuiltQuestionAnswer deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltQuestionAnswerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'questionId':
          result.questionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'text':
          result.text.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'answer':
          result.answer.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltQuestionAnswer extends BuiltQuestionAnswer {
  @override
  final String questionId;
  @override
  final int type;
  @override
  final BuiltList<String> text;
  @override
  final BuiltList<int> answer;

  factory _$BuiltQuestionAnswer(
          [void Function(BuiltQuestionAnswerBuilder) updates]) =>
      (new BuiltQuestionAnswerBuilder()..update(updates)).build();

  _$BuiltQuestionAnswer._({this.questionId, this.type, this.text, this.answer})
      : super._();

  @override
  BuiltQuestionAnswer rebuild(
          void Function(BuiltQuestionAnswerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltQuestionAnswerBuilder toBuilder() =>
      new BuiltQuestionAnswerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltQuestionAnswer &&
        questionId == other.questionId &&
        type == other.type &&
        text == other.text &&
        answer == other.answer;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, questionId.hashCode), type.hashCode), text.hashCode),
        answer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltQuestionAnswer')
          ..add('questionId', questionId)
          ..add('type', type)
          ..add('text', text)
          ..add('answer', answer))
        .toString();
  }
}

class BuiltQuestionAnswerBuilder
    implements Builder<BuiltQuestionAnswer, BuiltQuestionAnswerBuilder> {
  _$BuiltQuestionAnswer _$v;

  String _questionId;
  String get questionId => _$this._questionId;
  set questionId(String questionId) => _$this._questionId = questionId;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  ListBuilder<String> _text;
  ListBuilder<String> get text => _$this._text ??= new ListBuilder<String>();
  set text(ListBuilder<String> text) => _$this._text = text;

  ListBuilder<int> _answer;
  ListBuilder<int> get answer => _$this._answer ??= new ListBuilder<int>();
  set answer(ListBuilder<int> answer) => _$this._answer = answer;

  BuiltQuestionAnswerBuilder();

  BuiltQuestionAnswerBuilder get _$this {
    if (_$v != null) {
      _questionId = _$v.questionId;
      _type = _$v.type;
      _text = _$v.text?.toBuilder();
      _answer = _$v.answer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltQuestionAnswer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltQuestionAnswer;
  }

  @override
  void update(void Function(BuiltQuestionAnswerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltQuestionAnswer build() {
    _$BuiltQuestionAnswer _$result;
    try {
      _$result = _$v ??
          new _$BuiltQuestionAnswer._(
              questionId: questionId,
              type: type,
              text: _text?.build(),
              answer: _answer?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'text';
        _text?.build();
        _$failedField = 'answer';
        _answer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltQuestionAnswer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
