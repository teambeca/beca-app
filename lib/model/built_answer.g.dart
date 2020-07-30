// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_answer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltAnswer> _$builtAnswerSerializer = new _$BuiltAnswerSerializer();

class _$BuiltAnswerSerializer implements StructuredSerializer<BuiltAnswer> {
  @override
  final Iterable<Type> types = const [BuiltAnswer, _$BuiltAnswer];
  @override
  final String wireName = 'BuiltAnswer';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltAnswer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.userId != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(String)));
    }
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
    if (object.creationDate != null) {
      result
        ..add('creationDate')
        ..add(serializers.serialize(object.creationDate,
            specifiedType: const FullType(int)));
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
  BuiltAnswer deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltAnswerBuilder();

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
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'questionId':
          result.questionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'creationDate':
          result.creationDate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$BuiltAnswer extends BuiltAnswer {
  @override
  final String id;
  @override
  final String userId;
  @override
  final String questionId;
  @override
  final int type;
  @override
  final int creationDate;
  @override
  final BuiltList<int> answer;

  factory _$BuiltAnswer([void Function(BuiltAnswerBuilder) updates]) =>
      (new BuiltAnswerBuilder()..update(updates)).build();

  _$BuiltAnswer._(
      {this.id,
      this.userId,
      this.questionId,
      this.type,
      this.creationDate,
      this.answer})
      : super._();

  @override
  BuiltAnswer rebuild(void Function(BuiltAnswerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltAnswerBuilder toBuilder() => new BuiltAnswerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltAnswer &&
        id == other.id &&
        userId == other.userId &&
        questionId == other.questionId &&
        type == other.type &&
        creationDate == other.creationDate &&
        answer == other.answer;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), userId.hashCode),
                    questionId.hashCode),
                type.hashCode),
            creationDate.hashCode),
        answer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltAnswer')
          ..add('id', id)
          ..add('userId', userId)
          ..add('questionId', questionId)
          ..add('type', type)
          ..add('creationDate', creationDate)
          ..add('answer', answer))
        .toString();
  }
}

class BuiltAnswerBuilder implements Builder<BuiltAnswer, BuiltAnswerBuilder> {
  _$BuiltAnswer _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  String _questionId;
  String get questionId => _$this._questionId;
  set questionId(String questionId) => _$this._questionId = questionId;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  int _creationDate;
  int get creationDate => _$this._creationDate;
  set creationDate(int creationDate) => _$this._creationDate = creationDate;

  ListBuilder<int> _answer;
  ListBuilder<int> get answer => _$this._answer ??= new ListBuilder<int>();
  set answer(ListBuilder<int> answer) => _$this._answer = answer;

  BuiltAnswerBuilder();

  BuiltAnswerBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _userId = _$v.userId;
      _questionId = _$v.questionId;
      _type = _$v.type;
      _creationDate = _$v.creationDate;
      _answer = _$v.answer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltAnswer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltAnswer;
  }

  @override
  void update(void Function(BuiltAnswerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltAnswer build() {
    _$BuiltAnswer _$result;
    try {
      _$result = _$v ??
          new _$BuiltAnswer._(
              id: id,
              userId: userId,
              questionId: questionId,
              type: type,
              creationDate: creationDate,
              answer: _answer?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'answer';
        _answer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltAnswer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
