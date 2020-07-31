import 'dart:async';

import 'package:beca_app/model/built_answer.dart';
import 'package:beca_app/model/built_question.dart';
import 'package:beca_app/model/built_question_answer.dart';
import 'package:beca_app/service/question_service.dart';
import 'package:beca_app/utils/local_store_keys.dart';
import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'question_event.dart';
part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  final QuestionService questionService;

  QuestionBloc({this.questionService})
      : assert(questionService != null),
        super(QuestionInitial());

  @override
  Stream<QuestionState> mapEventToState(
    QuestionEvent event,
  ) async* {
    // #region QuestionTypeChange
    if (event is QuestionTypeChange) {
      yield QuestionState(questionType: event.type);
    }
    // #endregion

    // #region QuestionGet
    if (event is QuestionGet) {
      yield QuestionGetInProgress(questionType: this.state.questionType);

      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String authToken = prefs.getString(LocalStoreKeys.AuthToken.toString());

        final response = await questionService.getQuestionByType(
            "Bearer $authToken", this.state.questionType);

        yield QuestionGetSuccess(
            question: response.body, questionType: response.body.type);
      } catch (e) {
        yield QuestionGetFailure(
            message: e.toString(), questionType: this.state.questionType);
      }
    }
    // #endregion

    // #region QuestionAnswerPost
    if (event is QuestionAnswerPost) {
      yield QuestionAnswerPostInProgress(questionType: this.state.questionType);

      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String authToken = prefs.getString(LocalStoreKeys.AuthToken.toString());

        final response = await questionService.postAnswer(
          "Bearer $authToken",
          BuiltQuestionAnswer(
            (b) {
              if (event.answer.isNotEmpty)
                b..answer = ListBuilder(event.answer);
              if (event.questionId != null && event.questionId.isNotEmpty)
                b..questionId = event.questionId;
              if (event.text.isNotEmpty) b..text = ListBuilder(event.text);
              b..type = event.type;

              return b;
            },
          ),
        );

        yield QuestionAnswerPostSuccess(
            answer: response.body, questionType: this.state.questionType);
      } catch (e) {
        yield QuestionAnswerPostFailure(
            message: e.toString(), questionType: this.state.questionType);
      }
    }
    // #endregion
  }
}
