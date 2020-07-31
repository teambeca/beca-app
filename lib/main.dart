import 'package:auto_route/auto_route.dart';
import 'package:beca_app/bloc/account_bloc.dart';
import 'package:beca_app/bloc/becca_bot_bloc.dart';
import 'package:beca_app/bloc/feedback_bloc.dart';
import 'package:beca_app/bloc/leaderboard_bloc.dart';
import 'package:beca_app/bloc/location_bloc.dart';
import 'package:beca_app/bloc/profile_bloc.dart';
import 'package:beca_app/bloc/question_bloc.dart';
import 'package:beca_app/bloc/report_bloc.dart';
import 'package:beca_app/bloc/theme_bloc.dart';
import 'package:beca_app/pages/auth/auth.dart';
import 'package:beca_app/pages/main/main.dart';
import 'package:beca_app/service/account_service.dart';
import 'package:beca_app/service/auth_service.dart';
import 'package:beca_app/service/becca_bot_service.dart';
import 'package:beca_app/service/feedback_service.dart';
import 'package:beca_app/service/leaderboard_service.dart';
import 'package:beca_app/service/location_service.dart';
import 'package:beca_app/service/profile_service.dart';
import 'package:beca_app/service/question_service.dart';
import 'package:beca_app/service/report_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

import 'bloc/auth_bloc.dart';
import 'pages/splash.dart';

final homeExNavigatorKey = GlobalKey<ExtendedNavigatorState>();

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

void main() {
  _setupLogging();

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
//TODO: Add Dispose to Blocs for disposing service clients
    runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(authService: AuthService.create()),
          ),
          BlocProvider<BeccaBotBloc>(
            create: (context) =>
                BeccaBotBloc(beccaBotService: BeccaBotService.create()),
          ),
          BlocProvider<LeaderboardBloc>(
            create: (context) => LeaderboardBloc(
                leaderboardService: LeaderboardService.create()),
          ),
          BlocProvider<LocationBloc>(
            create: (context) =>
                LocationBloc(locationService: LocationService.create())
                  ..add(LocationStarted()),
          ),
          BlocProvider<QuestionBloc>(
              create: (context) =>
                  QuestionBloc(questionService: QuestionService.create())),
          BlocProvider<AccountBloc>(
            create: (context) =>
                AccountBloc(accountService: AccountService.create())
                  ..add(AccountStarted()),
          ),
          BlocProvider<ProfileBloc>(
            create: (context) =>
                ProfileBloc(profileService: ProfileService.create())
                  ..add(ProfileStarted()),
          ),
          BlocProvider<FeedbackBloc>(
              create: (context) =>
                  FeedbackBloc(feedbackService: FeedbackService.create())),
          BlocProvider<ReportBloc>(
              create: (context) =>
                  ReportBloc(reportService: ReportService.create())),
          BlocProvider<ThemeBloc>(
            create: (context) => ThemeBloc()..add(ThemeStarted()),
          ),
        ],
        child: App(),
      ),
    );
  });
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeState.themeDataMain,
          home: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, authState) {
              // if (themeState is ThemeInitial) {
              //   BlocProvider.of<ThemeBloc>(context).add(ThemeStarted());
              //   return SplashPage();
              // }
              if (authState is AuthInitial) {
                BlocProvider.of<AuthBloc>(context).add(AuthStarted());
                return SplashPage();
              }
              if (authState is AuthSuccess) {
                return Theme(
                  data: Theme.of(context).copyWith(
                    textTheme: Theme.of(context).textTheme.apply(
                          bodyColor: Colors.white,
                          displayColor: Colors.white,
                        ),
                  ),
                  child: MainPagesTabbar(),
                );
              }
              if (authState is AuthFailure) {
                return Theme(
                  data: Theme.of(context).copyWith(
                    textTheme: Theme.of(context).textTheme.apply(
                          bodyColor: Colors.black,
                          displayColor: Colors.black,
                        ),
                  ),
                  child: AuthPagesStack(),
                );
              }
              if (authState is AuthInProgress) {
                return Scaffold(
                  body: Container(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                );
              }

              return Scaffold(
                body: Container(
                  child: Center(
                    child: Text("Unknown Auth State"),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
