part of 'feedback_bloc.dart';

class FeedbackState extends Equatable {
  const FeedbackState();

  @override
  List<Object> get props => [];
}

class FeedbackInProgress extends FeedbackState {}

class FeedbackSuccess extends FeedbackState {}

class FeedbackFailure extends FeedbackState {
  final String message;

  const FeedbackFailure({
    @required this.message,
  });

  @override
  List<Object> get props => [message];
}
