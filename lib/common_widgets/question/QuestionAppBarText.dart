import 'package:beca_app/bloc/question_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionAppBarText extends StatelessWidget {
  const QuestionAppBarText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      builder: (context, questionState) {
        var _text = "";

        switch (questionState.questionType) {
          case 0:
            _text = "CÜMLENİN ÖGELERİ";
            break;
          case 1:
            _text = "OLUMLU / OLUMSUZ CÜMLE";
            break;
          case 2:
            _text = "OLUMLU / OLUMSUZ KELİME";
            break;
          case 3:
            _text = "KELİMELER ARASI BAĞLANTI";
            break;
          default:
            _text = "";
            break;
        }

        return Text(_text);
      },
    );
  }
}
