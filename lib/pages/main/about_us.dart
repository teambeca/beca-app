import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hakkımızda"),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 200.0,
                  width: double.infinity,
                  child: Image(image: AssetImage("assets/BECA.png")),
                ),
                SizedBox(height: 20.0),
                Text(
                  "BECA ekibi dört Bahçeşehir Üniversitesi öğrencisi tarafından oluşturulan bir ekiptir. Daha önce çeşitli projelerde bulunmuş olan ekip üyeleri, ileride yeni teknolojiler icat etmek için çalışan çekirdek bir gruptur.",
                  textAlign: TextAlign.left,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.white),
                ),
                SizedBox(height: 20.0),
                Text(
                  "Multidisipliner çalışma şeklini benimsemiş bir grup olarak, projelerimizde de bunu yansıtmaktayız.",
                  textAlign: TextAlign.left,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.white),
                ),
                SizedBox(height: 20.0),
                Text(
                  "BECA ekibi olarak vizyonumuz yapay zeka ve teknolojileri alanında Türkiye ve dünya çapında yararlı projelere imza atmaktır.",
                  textAlign: TextAlign.left,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.white),
                ),
                SizedBox(height: 20.0),
                Text(
                  "BECA ekibi: \nAhmet Turgut Katı\nCelal Demir\nIşıl Sanusoğlu\nElmas Başak Gören",
                  textAlign: TextAlign.left,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
