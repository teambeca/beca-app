import 'dart:async';

import 'package:beca_app/model/built_location.dart';
import 'package:beca_app/service/location_service.dart';
import 'package:beca_app/utils/local_store_keys.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:built_collection/built_collection.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final LocationService locationService;

  LocationBloc({@required this.locationService})
      : assert(locationService != null),
        super(LocationInitial());

  @override
  Stream<LocationState> mapEventToState(
    LocationEvent event,
  ) async* {
    // #region LocationStarted
    if (event is LocationStarted) {
      try {
        yield LocationInProgress();

        SharedPreferences prefs = await SharedPreferences.getInstance();
        String authToken = prefs.getString(LocalStoreKeys.AuthToken.toString());

        var response = await locationService.getLocation("Bearer $authToken");

        yield LocationSuccess(locations: response.body);
      } catch (e) {
        yield LocationFailure(message: e.toString());
      }
    }
    // #endregion

    // #region LocationGet
    if (event is LocationGet) {
      yield LocationInProgress();

      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String authToken = prefs.getString(LocalStoreKeys.AuthToken.toString());

        var response = await locationService.getLocation("Bearer $authToken");

        yield LocationSuccess(locations: response.body);
      } catch (e) {
        yield LocationFailure(message: e.toString());
      }
    }
    // #endregion
  }
}
