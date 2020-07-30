import 'package:beca_app/bloc/question_bloc.dart';
import 'package:beca_app/pages/main/question_answer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionPageCenter extends StatelessWidget {
  const QuestionPageCenter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      builder: (context, questionState) {
        if (questionState is QuestionGetSuccess) {
          if (questionState.questionType == 0)
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Wrap(
                    children: <Widget>[
                      ...questionState.question.text.map(
                        (val) => SelectableText(
                          text: val,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );

          String _wordSeperator;
          TextStyle _textStyle;
          switch (questionState.questionType) {
            case 1:
              _wordSeperator = " ";
              _textStyle = Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.white);
              break;
            case 2:
              _wordSeperator = "";
              _textStyle = Theme.of(context)
                  .textTheme
                  .headline3
                  .copyWith(color: Colors.white);
              break;
            case 3:
              _wordSeperator = "\n<>\n";
              _textStyle = Theme.of(context)
                  .textTheme
                  .headline3
                  .copyWith(color: Colors.white);
              break;
            default:
          }
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    questionState.question.text.join(_wordSeperator),
                    textAlign: TextAlign.center,
                    style: _textStyle,
                  )),
            ),
          );
        } else
          return Expanded(
            child: Align(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            ),
          );
      },
    );
  }
}

//TODO: SelectableText Question Type 0 Answers
class SelectableText extends StatelessWidget {
  const SelectableText({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      onPressed: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            opaque: false,
            pageBuilder: (_, __, ___) => QuestionAnswerPage(),
          ),
        );
      },
      child: Text(
        this.text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.button.copyWith(color: Colors.white),
      ),
    );
  }
}
