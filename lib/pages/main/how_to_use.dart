import 'package:beca_app/utils/app_themes.dart';
import 'package:flutter/material.dart';

class HowToUsePage extends StatefulWidget {
  @override
  HowToUsePageState createState() {
    return new HowToUsePageState();
  }
}

class HowToUsePageState extends State<HowToUsePage> {
  PageController pageController;
  Animatable<ThemeData> background;

  @override
  void initState() {
    _initialize();
    super.initState();
  }

  void _initialize() {
    background = TweenSequence<ThemeData>([
      TweenSequenceItem(
        weight: 1.0,
        tween: ThemeDataTween(
          begin: appThemeData[AppTheme.Blue],
          end: appThemeData[AppTheme.Green],
        ),
      ),
      TweenSequenceItem(
        weight: 1.0,
        tween: ThemeDataTween(
          begin: appThemeData[AppTheme.Green],
          end: appThemeData[AppTheme.Orange],
        ),
      ),
      TweenSequenceItem(
        weight: 1.0,
        tween: ThemeDataTween(
          begin: appThemeData[AppTheme.Orange],
          end: appThemeData[AppTheme.Purple],
        ),
      ),
    ]);
    pageController = PageController();
  }

  @override
  void reassemble() {
    pageController.dispose();
    _initialize();
    super.reassemble();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, child) {
        final color = pageController.hasClients ? pageController.page / 3 : .0;

        return Theme(
          data: background.evaluate(AlwaysStoppedAnimation(color)),
          child: child,
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Nasıl Kullanılır"),
          leading: IconButton(
            color: Colors.white,
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overScroll) {
            overScroll.disallowGlow();
            return false;
          },
          child: PageView(
            controller: pageController,
            children: [
              Page(
                imageURI: "assets/how_to_use_0.png",
                bottomText:
                    "Oynaya başlamak için “Oyna” sayfasına gelip, oynamak istediğiniz türü seçtikten sonra, oynamaya hemen başlayabilirsin.",
              ),
              Page(
                imageURI: "assets/how_to_use_1.png",
                bottomText:
                    "Yanıtlamak istemediğin soruları “Bu soruyu geç” yazısına basarak geçebilirsin.",
              ),
              Page(
                imageURI: "assets/how_to_use_2.png",
                bottomText:
                    "Sana sakıncalı gelen cümleleri / kelimeleri, sağ üstte bulunan ünlem ikonuna dokunarak bize bildirebilirsin.",
              ),
              Page(
                imageURI: "assets/how_to_use_3.png",
                bottomText:
                    "Profil sayfasından profil bilgilerini doldurarak seni daha çok tanımamıza olanak sağlayabilirsin.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  const Page({
    Key key,
    @required String imageURI,
    @required String bottomText,
  })  : this._imageURI = imageURI,
        this._bottomText = bottomText,
        super(key: key);

  final String _imageURI;
  final String _bottomText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(
            child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Image(image: AssetImage(_imageURI)),
            ),
          ),
        )),
        BottomContainerText(
          text: _bottomText,
        )
      ],
    );
  }
}

class BottomContainerText extends StatelessWidget {
  const BottomContainerText({
    Key key,
    String text,
  })  : this._text = text,
        super(key: key);

  final String _text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      color: Color.fromARGB(255, 43, 43, 43),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            _text,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
