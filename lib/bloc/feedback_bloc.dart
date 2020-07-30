import 'dart:async';

import 'package:beca_app/model/built_feedback.dart';
import 'package:beca_app/service/feedback_service.dart';
import 'package:beca_app/utils/local_store_keys.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'feedback_event.dart';
part 'feedback_state.dart';

class FeedbackBloc extends Bloc<FeedbackEvent, FeedbackState> {
  final FeedbackService feedbackService;

  FeedbackBloc({this.feedbackService})
      : assert(feedbackService != null),
        super(FeedbackState());

  @override
  Stream<FeedbackState> mapEventToState(
    FeedbackEvent event,
  ) async* {
    // #region FeedbackPost
    if (event is FeedbackPost) {
      yield FeedbackInProgress();

      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String authToken = prefs.getString(LocalStoreKeys.AuthToken.toString());

        await feedbackService.postFeedback(
          "Bearer $authToken",
          BuiltFeedback(
            (b) => b..message = event.message,
          ),
        );

        yield FeedbackSuccess();
      } catch (e) {
        yield FeedbackFailure(message: e.toString());
      }
    }
    // #endregion
  }
}
