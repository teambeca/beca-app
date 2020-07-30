part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  final ThemeData themeDataMain;
  final ThemeData themeDataQuestion;

  ThemeState({
    this.themeDataMain,
    this.themeDataQuestion,
  });

  @override
  List<Object> get props => [themeDataMain, themeDataQuestion];
}

class ThemeInitial extends ThemeState {
  ThemeInitial({@required ThemeData themeDataMain})
      : super(themeDataMain: themeDataMain);
}

class ThemeLoaded extends ThemeState {
  ThemeLoaded({
    ThemeData themeDataMain,
    ThemeData themeDataQuestion,
  }) : super(
          themeDataMain: themeDataMain,
          themeDataQuestion: themeDataQuestion,
        );

  @override
  List<Object> get props => [themeDataMain, themeDataQuestion];
}
