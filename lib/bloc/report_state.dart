part of 'report_bloc.dart';

class ReportState extends Equatable {
  const ReportState();

  @override
  List<Object> get props => [];
}

class ReportInProgress extends ReportState {}

class ReportSuccess extends ReportState {}

class ReportFailure extends ReportState {
  final String message;

  const ReportFailure({
    @required this.message,
  });

  @override
  List<Object> get props => [message];
}
