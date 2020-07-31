import 'package:beca_app/bloc/account_bloc.dart';
import 'package:beca_app/bloc/auth_bloc.dart';
import 'package:beca_app/bloc/leaderboard_bloc.dart';
import 'package:beca_app/common_widgets/MyAvatar.dart';
import 'package:beca_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LeaderBoardPage extends StatelessWidget {
  //TODO: Leaderboard AppBar'ın elevation'ını LeaderboardSuccess olunca 0.0 olacak
  //ve AccountContainer sadece LeaderboardSuccess olunca render edilecek

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lider Tablosu"),
        elevation: 0.0,
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, authState) {
          // if (authState is AuthSuccess)
          //   Scaffold.of(context).showSnackBar(
          //     SnackBar(
          //       content: Text("Lider Tablosu yüklenemedi"),
          //     ),
          //   );
        },
        child: BlocListener<LeaderboardBloc, LeaderboardState>(
          listener: (context, leaderboardState) {
            if (leaderboardState is LeaderboardFailure)
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text("Lider Tablosu yüklenemedi"),
                ),
              );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Theme.of(context).primaryColorLight,
                padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: BlocBuilder<AccountBloc, AccountState>(
                        builder: (context, accountState) {
                          if (accountState is AccountInProgress)
                            return Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundColor:
                                        Theme.of(context).primaryColorDark,
                                    radius: 37.5,
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    "",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                            );

                          if (accountState is AccountSuccess)
                            return Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  MyAvatar(
                                    radius: 100.0,
                                    imageUri: accountState.account.avatarTag !=
                                            null
                                        ? "assets/avatars/${accountState.account.avatarTag}.png"
                                        : "assets/avatars/$DEFAULT_AVATAR_TAG.png",
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    "${accountState.account.username}",
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                            );

                          return Container();
                        },
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: BlocBuilder<AccountBloc, AccountState>(
                        builder: (context, accountState) {
                          if (accountState is AccountInProgress)
                            return Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "#0",
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                  Text(
                                    "SIRA",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.overline,
                                  ),
                                ],
                              ),
                            );

                          if (accountState is AccountSuccess)
                            return Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "#${accountState.account.place}",
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                  Text(
                                    "SIRA",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.overline,
                                  ),
                                ],
                              ),
                            );

                          return Container();
                        },
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: BlocBuilder<AccountBloc, AccountState>(
                        builder: (context, accountState) {
                          if (accountState is AccountInProgress)
                            return Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "0",
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                  Text(
                                    "DENEYİM PUANI",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.overline,
                                  ),
                                ],
                              ),
                            );

                          if (accountState is AccountSuccess)
                            return Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "${accountState.account.score}",
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                  Text(
                                    "DENEYİM PUANI",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.overline,
                                  ),
                                ],
                              ),
                            );

                          return Container();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    BlocProvider.of<LeaderboardBloc>(context)
                        .add(LeaderboardGet());
                    BlocProvider.of<AccountBloc>(context).add(AccountGet());
                  },
                  child: BlocBuilder<LeaderboardBloc, LeaderboardState>(
                    builder: (context, leaderboardState) {
                      if (leaderboardState is LeaderboardInitial)
                        context.bloc<LeaderboardBloc>().add(LeaderboardGet());

                      if (leaderboardState is LeaderboardFailure)
                        return Container(
                          child: Center(
                            child: RaisedButton(
                              color: Theme.of(context).primaryColorDark,
                              onPressed: () async {
                                BlocProvider.of<LeaderboardBloc>(context)
                                    .add(LeaderboardGet());
                                BlocProvider.of<AccountBloc>(context)
                                    .add(AccountGet());
                              },
                              child: Text(
                                "Refresh",
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        );

                      if (leaderboardState is LeaderboardInProgress)
                        return Container(
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );

                      // return Center(child: CircularProgressIndicator());

                      if (leaderboardState is LeaderboardSuccess)
                        return NotificationListener<
                            OverscrollIndicatorNotification>(
                          onNotification:
                              (OverscrollIndicatorNotification overScroll) {
                            overScroll.disallowGlow();
                            return false;
                          },
                          child: ListView.builder(
                            padding: const EdgeInsets.only(top: 8.0),
                            itemCount: leaderboardState.users?.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(
                                  leaderboardState.users[index].username ?? "",
                                  style: Theme.of(context).textTheme.button,
                                ),
                                leading: Container(
                                  width: 120,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text(
                                          "# ${index + 1}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .button,
                                        ),
                                        SizedBox(width: 15),
                                        MyAvatar(
                                            radius: 50.0,
                                            imageUri: leaderboardState
                                                        .users[index]
                                                        .avatarTag !=
                                                    null
                                                ? "assets/avatars/${leaderboardState.users[index].avatarTag}.png"
                                                : "assets/avatars/$DEFAULT_AVATAR_TAG.png"),
                                      ],
                                    ),
                                  ),
                                ),
                                trailing: Text(
                                  leaderboardState.users[index].score
                                      .toString(),
                                  style: Theme.of(context).textTheme.button,
                                  textAlign: TextAlign.right,
                                ),
                              );
                            },
                          ),
                        );
                      return Container();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
