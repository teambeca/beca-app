// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_feedback.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltFeedback> _$builtFeedbackSerializer =
    new _$BuiltFeedbackSerializer();

class _$BuiltFeedbackSerializer implements StructuredSerializer<BuiltFeedback> {
  @override
  final Iterable<Type> types = const [BuiltFeedback, _$BuiltFeedback];
  @override
  final String wireName = 'BuiltFeedback';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltFeedback object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
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
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.creationDate != null) {
      result
        ..add('creationDate')
        ..add(serializers.serialize(object.creationDate,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BuiltFeedback deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltFeedbackBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'creationDate':
          result.creationDate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltFeedback extends BuiltFeedback {
  @override
  final String id;
  @override
  final String userId;
  @override
  final String type;
  @override
  final String message;
  @override
  final int creationDate;

  factory _$BuiltFeedback([void Function(BuiltFeedbackBuilder) updates]) =>
      (new BuiltFeedbackBuilder()..update(updates)).build();

  _$BuiltFeedback._(
      {this.id, this.userId, this.type, this.message, this.creationDate})
      : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('BuiltFeedback', 'message');
    }
  }

  @override
  BuiltFeedback rebuild(void Function(BuiltFeedbackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltFeedbackBuilder toBuilder() => new BuiltFeedbackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltFeedback &&
        id == other.id &&
        userId == other.userId &&
        type == other.type &&
        message == other.message &&
        creationDate == other.creationDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), userId.hashCode), type.hashCode),
            message.hashCode),
        creationDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltFeedback')
          ..add('id', id)
          ..add('userId', userId)
          ..add('type', type)
          ..add('message', message)
          ..add('creationDate', creationDate))
        .toString();
  }
}

class BuiltFeedbackBuilder
    implements Builder<BuiltFeedback, BuiltFeedbackBuilder> {
  _$BuiltFeedback _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  int _creationDate;
  int get creationDate => _$this._creationDate;
  set creationDate(int creationDate) => _$this._creationDate = creationDate;

  BuiltFeedbackBuilder();

  BuiltFeedbackBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _userId = _$v.userId;
      _type = _$v.type;
      _message = _$v.message;
      _creationDate = _$v.creationDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltFeedback other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltFeedback;
  }

  @override
  void update(void Function(BuiltFeedbackBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltFeedback build() {
    final _$result = _$v ??
        new _$BuiltFeedback._(
            id: id,
            userId: userId,
            type: type,
            message: message,
            creationDate: creationDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
