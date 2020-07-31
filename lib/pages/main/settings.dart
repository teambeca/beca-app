import 'package:beca_app/bloc/theme_bloc.dart';
import 'package:beca_app/pages/main/about_us.dart';
import 'package:beca_app/pages/main/becca_bot.dart';
import 'package:beca_app/pages/main/feedback.dart';
import 'package:beca_app/pages/main/how_to_use.dart';
import 'package:beca_app/utils/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool hasAudio = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
              displayColor: Colors.black,
            ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ayarlar"),
        ),
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overScroll) {
            overScroll.disallowGlow();
            return false;
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Card(
                    child: ExpansionTile(
                      title: Text("Uygulama Teması"),
                      children: <Widget>[
                        ...AppTheme.values.map(
                          (e) => ListTile(
                            selected: _checkSelected(context, e),
                            onTap: () {
                              BlocProvider.of<ThemeBloc>(context)
                                  .add(ThemeChanged(themeMain: e));
                            },
                            title: Text(appThemeNameMap[e.toString()]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: SwitchListTile(
                      title: Text("Sesler"),
                      onChanged: (value) {
                        setState(() {
                          // hasAudio = value;
                        });
                      },
                      value: hasAudio,
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(
                            Icons.favorite,
                            color: Color.fromARGB(255, 176, 0, 32),
                          ),
                          title: Text("Becca Bot"),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (context) => BeccaBotPage(),
                              ),
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Divider(),
                        ),
                        ListTile(
                          title: Text("Veri Setine Ulaş"),
                          onTap: () {
                            _launchURL();
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Divider(),
                        ),
                        ListTile(
                          title: Text("Nasıl Kullanılır"),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (context) => HowToUsePage(),
                              ),
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Divider(),
                        ),
                        ListTile(
                          title: Text("Hakkımızda"),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (context) => AboutUsPage(),
                              ),
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Divider(),
                        ),
                        ListTile(
                          title: Text("Geri Bildirim"),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (context) => FeedbackPage(),
                              ),
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Divider(),
                        ),
                        ListTile(
                          title: Text("Paylaş"),
                          onTap: () {
                            final RenderBox box = context.findRenderObject();
                            Share.share(
                                "Selam, ben Baazi oynuyorum. Hadi sen de bana katıl!",
                                subject: "Baazi",
                                sharePositionOrigin:
                                    box.localToGlobal(Offset.zero) & box.size);
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Bu uygulama aracılığıyla, Türkçe doğal dil işleme için veri seti oluşturulmasına katkı sağladığınız için teşekkür ederiz.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(color: Color.fromARGB(100, 0, 0, 0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = "https://github.com/teambeca";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    //TODO: Error
  }
}

bool _checkSelected(BuildContext context, AppTheme e) {
  var themeState = BlocProvider.of<ThemeBloc>(context).state;
  if (themeState is ThemeLoaded) {
    return themeState.themeDataMain.primaryColor ==
        appThemeData[e].primaryColor;
  }

  return false;
}
