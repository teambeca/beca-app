part of 'feedback_bloc.dart';

abstract class FeedbackEvent extends Equatable {
  const FeedbackEvent();

  @override
  List<Object> get props => [];
}

class FeedbackPost extends FeedbackEvent {
  final String message;

  const FeedbackPost({
    @required this.message,
  });

  @override
  List<Object> get props => [message];
}
