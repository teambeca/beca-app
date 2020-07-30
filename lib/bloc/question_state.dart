part of 'question_bloc.dart';

class QuestionState extends Equatable {
  final int questionType;

  const QuestionState({@required this.questionType});

  @override
  List<Object> get props => [questionType];
}

class QuestionInitial extends QuestionState {}

class QuestionGetInProgress extends QuestionState {
  QuestionGetInProgress({@required int questionType})
      : super(questionType: questionType);
}

class QuestionGetSuccess extends QuestionState {
  final BuiltQuestion question;

  QuestionGetSuccess({
    @required this.question,
    @required int questionType,
  }) : super(questionType: questionType);

  @override
  List<Object> get props => [question, questionType];
}

class QuestionGetFailure extends QuestionState {
  final String message;

  const QuestionGetFailure({
    @required this.message,
    @required int questionType,
  }) : super(questionType: questionType);

  @override
  List<Object> get props => [message, questionType];
}

class QuestionAnswerPostInProgress extends QuestionState {
  QuestionAnswerPostInProgress({@required int questionType})
      : super(questionType: questionType);
}

class QuestionAnswerPostSuccess extends QuestionState {
  final BuiltAnswer answer;

  QuestionAnswerPostSuccess({
    @required this.answer,
    @required int questionType,
  }) : super(questionType: questionType);

  @override
  List<Object> get props => [answer, questionType];
}

class QuestionAnswerPostFailure extends QuestionState {
  final String message;

  const QuestionAnswerPostFailure({
    @required this.message,
    @required int questionType,
  }) : super(questionType: questionType);

  @override
  List<Object> get props => [message, questionType];
}
