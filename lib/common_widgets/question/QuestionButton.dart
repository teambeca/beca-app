import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beca_app/bloc/question_bloc.dart';
import 'package:flutter/material.dart';

class QuestionButton extends StatelessWidget {
  const QuestionButton({
    Key key,
    @required double answer,
  })  : _answer = answer,
        super(key: key);

  final double _answer;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      builder: (context, questionState) => FutureBuilder(
        future: Future.delayed(Duration(seconds: 2)),
        builder: (context, snapshot) => Padding(
          padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
          child: SizedBox(
            width: double.infinity,
            child: RaisedButton(
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Theme.of(context).primaryColorDark,
              padding: EdgeInsets.symmetric(vertical: 20),
              onPressed: _onPressed(context, questionState, _answer, snapshot),
              child: Text('İleri'),
            ),
          ),
        ),
      ),
    );
  }
}

Function _onPressed(BuildContext context, QuestionState questionState,
    double answer, AsyncSnapshot snapshot) {
  if (questionState is QuestionGetSuccess &&
      snapshot.connectionState == ConnectionState.done)
    return () => _postAnswer(context, questionState, answer);
  else
    return null;
}

void _postAnswer(
    BuildContext context, QuestionGetSuccess questionState, double answer) {
  context.bloc<QuestionBloc>().add(
        QuestionAnswerPost(
          answer: [answer.ceil()],
          questionId: questionState.question.id,
          text: questionState.question.text,
          type: questionState.question.type,
        ),
      );
  context.bloc<QuestionBloc>().add(QuestionGet());
}
