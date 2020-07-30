import 'package:beca_app/bloc/question_bloc.dart';
import 'package:beca_app/bloc/report_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionReportBar extends StatelessWidget {
  const QuestionReportBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.centerRight,
        child: IconButton(
          color: Colors.white,
          icon: Icon(Icons.info_outline),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isDismissible: true,
              builder: (BuildContext bc) {
                return Container(
                  child: new Wrap(
                    children: <Widget>[
                      ReportListTile(message: 'Uygun olmayan dil'),
                      ReportListTile(
                          message: 'Rahatsız edici içerik bulundurma'),
                      ReportListTile(
                          message: 'Dini veya siyasi ögelere saygısızlık'),
                      ReportListTile(message: 'Diğer'),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class ReportListTile extends StatelessWidget {
  const ReportListTile({
    Key key,
    @required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    QuestionGetSuccess state;
    return new ListTile(
      title: new Text(
        this.message,
        textAlign: TextAlign.left,
      ),
      onTap: () => {
        state = context.bloc<QuestionBloc>().state as QuestionGetSuccess,
        if (state.question.type != 3)
          context.bloc<ReportBloc>().add(
              ReportPost(message: this.message, questionId: state.question.id))
        else
          context.bloc<ReportBloc>().add(ReportPost(message: this.message)),
        context.bloc<QuestionBloc>().add(QuestionGet()),
        Navigator.pop(context),
      },
    );
  }
}
