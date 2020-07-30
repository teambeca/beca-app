part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ThemeStarted extends ThemeEvent {}

class ThemeChanged extends ThemeEvent {
  final AppTheme themeMain;
  final AppTheme themeQuestion;

  ThemeChanged({
    this.themeMain,
    this.themeQuestion,
  });

  @override
  List<Object> get props => [themeMain, themeQuestion];
}
