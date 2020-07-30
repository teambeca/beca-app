part of 'becca_bot_bloc.dart';

class BeccaBotState extends Equatable {
  const BeccaBotState();

  @override
  List<Object> get props => [];
}

class BeccaBotInProgress extends BeccaBotState {}

class BeccaBotSuccess extends BeccaBotState {
  final String message;

  const BeccaBotSuccess({
    @required this.message,
  });

  @override
  List<Object> get props => [message];
}

class BeccaBotFailure extends BeccaBotState {
  final String message;

  const BeccaBotFailure({
    @required this.message,
  });

  @override
  List<Object> get props => [message];
}
