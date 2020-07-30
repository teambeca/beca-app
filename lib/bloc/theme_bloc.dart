import 'dart:async';

import 'package:beca_app/utils/app_themes.dart';
import 'package:beca_app/utils/local_store_keys.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(ThemeState(
          themeDataMain: appThemeData[AppTheme.Blue],
          themeDataQuestion: appThemeData[AppTheme.Blue],
        ));

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    // #region ThemeStarted
    if (event is ThemeStarted) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      try {
        // await prefs.clear();

        String appTheme = prefs.getString(LocalStoreKeys.AppTheme.toString());

        bool hasFound = false;
        for (var item in AppTheme.values)
          if (item.toString() == appTheme) {
            hasFound = true;
            yield ThemeLoaded(themeDataMain: appThemeData[item]);
          }

        if (!hasFound)
          yield ThemeLoaded(themeDataMain: appThemeData[AppTheme.Blue]);
      } catch (e) {}
    }
    // #endregion

    // #region ThemeChanged
    if (event is ThemeChanged) {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      yield ThemeLoaded(
        themeDataMain: event.themeMain != null
            ? appThemeData[event.themeMain]
            : this.state.themeDataMain,
        themeDataQuestion: event.themeQuestion != null
            ? appThemeData[event.themeQuestion]
            : this.state.themeDataQuestion,
      );

      if (event.themeMain != null)
        try {
          await prefs.setString(
              LocalStoreKeys.AppTheme.toString(), event.themeMain.toString());
        } catch (e) {}
    }
    // #endregion
  }
}
