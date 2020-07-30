part of 'report_bloc.dart';

abstract class ReportEvent extends Equatable {
  const ReportEvent();

  @override
  List<Object> get props => [];
}

class ReportPost extends ReportEvent {
  final String message;
  final String questionId;

  const ReportPost({
    @required this.message,
    this.questionId,
  });

  @override
  List<Object> get props => [message, questionId];
}
