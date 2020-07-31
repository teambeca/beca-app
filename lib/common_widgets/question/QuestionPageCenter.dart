import 'package:beca_app/bloc/question_bloc.dart';
import 'package:beca_app/pages/main/question_answer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef void QuestionPageCenterOnChange(List<int> answers);

class QuestionPageCenter extends StatelessWidget {
  final QuestionPageCenterOnChange onChange;

  const QuestionPageCenter({
    Key key,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      builder: (context, questionState) {
        if (questionState is QuestionGetSuccess) {
          if (questionState.questionType == 0)
            return new Question0Center(
                questionState: questionState, onChange: this.onChange);

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

class Question0Center extends StatefulWidget {
  final QuestionGetSuccess questionState;
  final QuestionPageCenterOnChange onChange;

  const Question0Center({
    Key key,
    this.questionState,
    this.onChange,
  }) : super(key: key);

  @override
  _Question0CenterState createState() => _Question0CenterState();
}

class _Question0CenterState extends State<Question0Center> {
  bool isSelected = false;
  int selectedWordIndex;
  Map<String, int> answers;

  _Question0CenterState({
    this.isSelected = false,
    this.selectedWordIndex,
    this.answers,
  });

  @override
  void initState() {
    super.initState();
    this.answers = new Map();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Align(
          alignment: Alignment.center,
          child: Wrap(
            children: <Widget>[
              ...this.widget.questionState.question.text.map(
                    (wordValue) => Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        color: answers[wordValue] != null
                            ? blobColors[answers[wordValue]].insideColor
                            : Colors.white.withOpacity(.5),
                        onPressed: () {
                          Navigator.of(context).push(
                            PageRouteBuilder(
                              opaque: false,
                              pageBuilder: (_, __, ___) => QuestionAnswerPage(
                                onTap: (selectedValue) {
                                  if (answers[wordValue] != null) {
                                    answers[wordValue] = selectedValue;
                                  } else {
                                    answers.putIfAbsent(
                                        wordValue, () => selectedValue);
                                  }

                                  setState(() {});

                                  this.widget.onChange(
                                        List.generate(
                                          this
                                              .widget
                                              .questionState
                                              .question
                                              .text
                                              .length,
                                          (index) =>
                                              answers[this
                                                  .widget
                                                  .questionState
                                                  .question
                                                  .text[index]] ??
                                              -1,
                                        ),
                                      );
                                },
                              ),
                            ),
                          );
                        },
                        child: Text(
                          wordValue,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
