import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beca_app/bloc/question_bloc.dart';
import 'package:flutter/material.dart';

class QuestionSkipButton extends StatelessWidget {
  const QuestionSkipButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      textColor: Colors.white,
      onPressed: () {
        QuestionState _qState = context.bloc<QuestionBloc>().state;
        if (_qState is QuestionGetSuccess) {
          context.bloc<QuestionBloc>().add(QuestionGet());
        }
        return null;
      },
      child: Text("BU SORUYU GEÇ"),
    );
  }
}
