import 'dart:async';

import 'package:beca_app/model/built_becca_bot_request.dart';
import 'package:beca_app/service/becca_bot_service.dart';
import 'package:beca_app/utils/local_store_keys.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'becca_bot_event.dart';
part 'becca_bot_state.dart';

class BeccaBotBloc extends Bloc<BeccaBotEvent, BeccaBotState> {
  final BeccaBotService beccaBotService;

  BeccaBotBloc({this.beccaBotService})
      : assert(BeccaBotService != null),
        super(BeccaBotState());

  @override
  Stream<BeccaBotState> mapEventToState(
    BeccaBotEvent event,
  ) async* {
    // #region BeccaBotPost
    if (event is BeccaBotPost) {
      yield BeccaBotInProgress();

      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String authToken = prefs.getString(LocalStoreKeys.AuthToken.toString());

        var response = await beccaBotService.postBeccaBot("Bearer $authToken",
            BuiltBeccaBotRequest(
          (b) {
            if (event.message != null && event.message.isNotEmpty)
              b..message = event.message;
            return b;
          },
        ));

        yield BeccaBotSuccess(message: response.body.story);
      } catch (e) {
        yield BeccaBotFailure(message: e.toString());
      }
    }
    // #endregion
  }
}
