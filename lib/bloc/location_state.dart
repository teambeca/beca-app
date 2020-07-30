part of 'location_bloc.dart';

abstract class LocationState extends Equatable {
  final BuiltList<BuiltLocation> locations;

  const LocationState({this.locations});

  @override
  List<Object> get props => [locations];
}

class LocationInitial extends LocationState {}

class LocationInProgress extends LocationState {}

class LocationSuccess extends LocationState {
  final BuiltList<BuiltLocation> locations;

  const LocationSuccess({@required this.locations});

  @override
  List<Object> get props => [locations];
}

class LocationFailure extends LocationState {
  final String message;

  const LocationFailure({@required this.message});

  @override
  List<Object> get props => [message];
}
