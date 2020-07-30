part of 'becca_bot_bloc.dart';

abstract class BeccaBotEvent extends Equatable {
  const BeccaBotEvent();

  @override
  List<Object> get props => [];
}

class BeccaBotPost extends BeccaBotEvent {
  final String message;

  const BeccaBotPost({
    @required this.message,
  });

  @override
  List<Object> get props => [message];
}
