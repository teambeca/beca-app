import 'dart:math';

import 'package:beca_app/bloc/question_bloc.dart';
import 'package:beca_app/bloc/theme_bloc.dart';
import 'package:beca_app/pages/main/question.dart';
import 'package:beca_app/utils/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oyna"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      onPressed: () {
                        var _questionType = Random().nextInt(3);
                        AppTheme _themeQuestion;

                        switch (_questionType) {
                          case 0:
                            _themeQuestion = AppTheme.Purple;
                            break;
                          case 1:
                            _themeQuestion = AppTheme.Orange;
                            break;
                          case 2:
                            _themeQuestion = AppTheme.Green;
                            break;
                          case 3:
                            _themeQuestion = AppTheme.Blue;
                            break;
                          default:
                        }

                        BlocProvider.of<ThemeBloc>(context)
                            .add(ThemeChanged(themeQuestion: _themeQuestion));
                        BlocProvider.of<QuestionBloc>(context)
                            .add(QuestionTypeChange(type: _questionType));

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => QuestionPage(),
                          ),
                        );
                      },
                      child: Text(
                        'RASTGELE OYUN',
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              'VEYA',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: appThemeData[AppTheme.Purple].primaryColorDark,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      onPressed: () {
                        BlocProvider.of<ThemeBloc>(context)
                            .add(ThemeChanged(themeQuestion: AppTheme.Purple));
                        BlocProvider.of<QuestionBloc>(context)
                            .add(QuestionTypeChange(type: 0));

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => QuestionPage(),
                          ),
                        );
                      },
                      child: Text(
                        'CÜMLENİN ÖGELERİ',
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: appThemeData[AppTheme.Orange].primaryColorDark,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      onPressed: () async {
                        BlocProvider.of<ThemeBloc>(context)
                            .add(ThemeChanged(themeQuestion: AppTheme.Orange));
                        BlocProvider.of<QuestionBloc>(context)
                            .add(QuestionTypeChange(type: 1));

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => QuestionPage(),
                          ),
                        );
                      },
                      child: Text(
                        'OLUMLU / OLUMSUZ CÜMLE',
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: appThemeData[AppTheme.Green].primaryColorDark,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      onPressed: () {
                        BlocProvider.of<ThemeBloc>(context)
                            .add(ThemeChanged(themeQuestion: AppTheme.Green));
                        BlocProvider.of<QuestionBloc>(context)
                            .add(QuestionTypeChange(type: 2));

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => QuestionPage(),
                          ),
                        );
                      },
                      child: Text(
                        'OLUMLU / OLUMSUZ KELİME',
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: appThemeData[AppTheme.Blue].primaryColorDark,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      onPressed: () {
                        BlocProvider.of<ThemeBloc>(context)
                            .add(ThemeChanged(themeQuestion: AppTheme.Blue));
                        BlocProvider.of<QuestionBloc>(context)
                            .add(QuestionTypeChange(type: 3));

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => QuestionPage(),
                          ),
                        );
                      },
                      child: Text(
                        'KELİMELER ARASI BAĞLANTI',
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
