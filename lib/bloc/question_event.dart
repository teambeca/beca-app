part of 'question_bloc.dart';

abstract class QuestionEvent extends Equatable {
  const QuestionEvent();

  @override
  List<Object> get props => [];
}

class QuestionTypeChange extends QuestionEvent {
  final int type;

  const QuestionTypeChange({
    @required this.type,
  });

  @override
  List<Object> get props => [type];
}

class QuestionGet extends QuestionEvent {}

class QuestionAnswerPost extends QuestionEvent {
  final String questionId;
  final int type;
  final BuiltList<String> text;
  final List<int> answer;

  const QuestionAnswerPost({
    @required this.questionId,
    @required this.type,
    @required this.text,
    @required this.answer,
  });

  @override
  List<Object> get props => [questionId, type, text, answer];
}
