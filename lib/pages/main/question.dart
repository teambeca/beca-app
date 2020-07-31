import 'package:beca_app/bloc/question_bloc.dart';
import 'package:beca_app/bloc/report_bloc.dart';
import 'package:beca_app/bloc/theme_bloc.dart';
import 'package:beca_app/common_widgets/question/AnswerSlider.dart';
import 'package:beca_app/common_widgets/question/QuestionAppBarText.dart';
import 'package:beca_app/common_widgets/question/QuestionButton.dart';
import 'package:beca_app/common_widgets/question/QuestionInfoAppBar.dart';
import 'package:beca_app/common_widgets/question/QuestionPageCenter.dart';
import 'package:beca_app/common_widgets/question/QuestionReportBar.dart';
import 'package:beca_app/common_widgets/question/QuestionSkipButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  List<int> _answer = [];

  @override
  void initState() {
    super.initState();
    context.bloc<QuestionBloc>().add(QuestionGet());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) => Theme(
        data: themeState.themeDataQuestion == null
            ? themeState.themeDataMain
            : themeState.themeDataQuestion,
        child: Scaffold(
          appBar: AppBar(
            title: QuestionAppBarText(),
            elevation: 0.0,
          ),
          body: BlocListener<QuestionBloc, QuestionState>(
            listener: (context, reportState) {
              if (reportState is QuestionAnswerPostSuccess)
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Cevabınız iletildi, Teşekkür ederiz"),
                  ),
                );
              if (reportState is QuestionAnswerPostFailure)
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Cevabınız iletilemedi"),
                  ),
                );
            },
            child: BlocListener<ReportBloc, ReportState>(
              listener: (context, reportState) {
                if (reportState is ReportSuccess)
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Raporunuz iletildi, Teşekkür ederiz"),
                    ),
                  );
                if (reportState is ReportFailure)
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Raporunuz iletilemedi"),
                    ),
                  );
              },
              child: Column(
                children: <Widget>[
                  QuestionInfoAppBar(),
                  QuestionReportBar(),
                  QuestionPageCenter(
                    onChange: (answers) {
                      setState(() {
                        _answer = answers;
                      });
                    },
                  ),
                  AnswerSlider(
                    onChange: (value) => setState(() {
                      return _answer = [value.ceil()];
                    }),
                  ),
                  QuestionSkipButton(),
                  QuestionButton(answer: _answer),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
