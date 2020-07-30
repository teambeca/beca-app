import 'dart:async';

import 'package:beca_app/model/built_profile.dart';
import 'package:beca_app/service/profile_service.dart';
import 'package:beca_app/utils/local_store_keys.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileService profileService;

  ProfileBloc({this.profileService})
      : assert(profileService != null),
        super(ProfileInitial());

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    // #region ProfileStarted
    if (event is ProfileStarted) {
      yield ProfileInProgress();

      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String authToken = prefs.getString(LocalStoreKeys.AuthToken.toString());

        final response = await profileService.getProfile("Bearer $authToken");
        yield ProfileSuccess(profile: response.body);
      } catch (e) {
        yield ProfileFailure(message: e.toString());
      }
    }
    // #endregion

    // #region ProfileGet
    if (event is ProfileGet) {
      yield ProfileInProgress();

      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String authToken = prefs.getString(LocalStoreKeys.AuthToken.toString());

        final response = await profileService.getProfile("Bearer $authToken");
        yield ProfileSuccess(profile: response.body);
      } catch (e) {
        yield ProfileFailure(message: e.toString());
      }
    }
    // #endregion

    // #region ProfilePatch
    if (event is ProfilePatch) {
      yield ProfileInProgress();

      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String authToken = prefs.getString(LocalStoreKeys.AuthToken.toString());

        final response = await profileService.patchProfile(
          "Bearer $authToken",
          BuiltProfile(
            (b) {
              if (event.email != null && event.email.isNotEmpty)
                b..email = event.email;

              if (event.email != null && event.fullName.isNotEmpty)
                b..fullName = event.fullName;

              if (event.age != null) b..age = event.age;

              if (event.gender != null) b..gender = event.gender;

              if (event.email != null && event.cityId.isNotEmpty)
                b..cityId = event.cityId;

              if (event.email != null && event.job.isNotEmpty)
                b..job = event.job;

              return b;
            },
          ),
        );
        yield ProfileSuccess(profile: response.body);
      } catch (e) {
        print(e.toString());
        yield ProfileFailure(message: e.toString());
      }
    }
    // #endregion
  }
}
