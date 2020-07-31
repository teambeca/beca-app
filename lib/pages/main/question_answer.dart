import 'package:flutter/material.dart';

class QuestionAnswerPage extends StatefulWidget {
  @override
  _QuestionAnswerPageState createState() => _QuestionAnswerPageState();
}

class _QuestionAnswerPageState extends State<QuestionAnswerPage> {
  List<bool> _isVisibles = [
    true,
    true,
    true,
    true,
    true,
    true,
    true,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          color: Color.fromARGB(100, 0, 0, 0),
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: <Widget>[
              BlobAnswer(
                isVisible: _isVisibles[0],
                onTap: () async {
                  setState(() {
                    var asd = _isVisibles.map((e) => false).toList();
                    asd[0] = true;
                    _isVisibles = asd;
                  });
                  await Future.delayed(Duration(microseconds: 2000))
                      .then((value) => {
                            Navigator.of(context).pop(),
                          });
                },
                radius: 100,
                text: "Özne",
                left: 50,
                top: 50,
                borderColor: Color.fromARGB(255, 41, 67, 78),
                insideColor: Color.fromARGB(255, 84, 110, 122),
              ),
              BlobAnswer(
                isVisible: _isVisibles[1],
                onTap: () async {
                  setState(() {
                    var asd = _isVisibles.map((e) => false).toList();
                    asd[1] = true;
                    _isVisibles = asd;
                  });
                  await Future.delayed(Duration(microseconds: 2000))
                      .then((value) => {
                            Navigator.of(context).pop(),
                          });
                },
                radius: 100,
                text: "Zarf Tümleci",
                left: 150,
                top: 150,
                borderColor: Color.fromARGB(255, 255, 112, 67),
                insideColor: Color.fromARGB(255, 255, 162, 112),
              ),
              BlobAnswer(
                isVisible: _isVisibles[2],
                onTap: () async {
                  setState(() {
                    var asd = _isVisibles.map((e) => false).toList();
                    asd[2] = true;
                    _isVisibles = asd;
                  });
                  await Future.delayed(Duration(microseconds: 2000))
                      .then((value) => {
                            Navigator.of(context).pop(),
                          });
                },
                radius: 100,
                text: "Belirtili Nesne",
                left: 150,
                top: 50,
                borderColor: Color.fromARGB(255, 0, 150, 136),
                insideColor: Color.fromARGB(255, 82, 199, 184),
              ),
              BlobAnswer(
                isVisible: _isVisibles[3],
                onTap: () async {
                  setState(() {
                    var asd = _isVisibles.map((e) => false).toList();
                    asd[3] = true;
                    _isVisibles = asd;
                  });
                  await Future.delayed(Duration(microseconds: 2000))
                      .then((value) => {
                            Navigator.of(context).pop(),
                          });
                },
                radius: 100,
                text: "Yüklem",
                left: 250,
                top: 250,
                borderColor: Color.fromARGB(255, 33, 150, 243),
                insideColor: Color.fromARGB(255, 77, 171, 245),
              ),
              BlobAnswer(
                isVisible: _isVisibles[4],
                onTap: () async {
                  setState(() {
                    var asd = _isVisibles.map((e) => false).toList();
                    asd[4] = true;
                    _isVisibles = asd;
                  });
                  await Future.delayed(Duration(microseconds: 2000))
                      .then((value) => {
                            Navigator.of(context).pop(),
                          });
                },
                radius: 100,
                text: "Belirtisiz Nesne",
                left: 250,
                top: 200,
                borderColor: Color.fromARGB(255, 176, 0, 58),
                insideColor: Color.fromARGB(255, 233, 30, 99),
              ),
              BlobAnswer(
                isVisible: _isVisibles[5],
                onTap: () async {
                  setState(() {
                    var asd = _isVisibles.map((e) => false).toList();
                    asd[5] = true;
                    _isVisibles = asd;
                  });
                  await Future.delayed(Duration(microseconds: 2000))
                      .then((value) => {
                            Navigator.of(context).pop(),
                          });
                },
                radius: 100,
                text: "Diğer",
                left: 200,
                top: 250,
                borderColor: Color.fromARGB(255, 0, 103, 91),
                insideColor: Color.fromARGB(255, 0, 150, 136),
              ),
              BlobAnswer(
                isVisible: _isVisibles[6],
                onTap: () async {
                  setState(() {
                    var asd = _isVisibles.map((e) => false).toList();
                    asd[6] = true;
                    _isVisibles = asd;
                  });
                  await Future.delayed(Duration(microseconds: 2000))
                      .then((value) => {
                            Navigator.of(context).pop(),
                          });
                },
                radius: 100,
                text: "Dolaylı Tümleç",
                left: 350,
                top: 300,
                borderColor: Color.fromARGB(255, 198, 63, 23),
                insideColor: Color.fromARGB(255, 255, 112, 67),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

typedef BlobAnswerOnTap = void Function();

class BlobAnswer extends StatelessWidget {
  final BlobAnswerOnTap onTap;
  final bool isVisible;
  final String text;
  final double radius;
  final double left;
  final double top;
  final Color borderColor;
  final Color insideColor;

  const BlobAnswer({
    Key key,
    @required this.onTap,
    @required this.isVisible,
    @required this.text,
    @required this.radius,
    @required this.left,
    @required this.top,
    @required this.borderColor,
    @required this.insideColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: this.left,
      top: this.top,
      child: AnimatedOpacity(
        opacity: this.isVisible ? 1.0 : .5,
        duration: Duration(milliseconds: 1000),
        child: Material(
          elevation: 4.0,
          shape: CircleBorder(
            side: BorderSide(
              color: this.borderColor,
              width: 2,
            ),
          ),
          clipBehavior: Clip.hardEdge,
          color: this.insideColor,
          child: InkWell(
            child: SizedBox(
              width: this.radius,
              height: this.radius,
              child: Center(
                child: Text(
                  this.text,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
            onTap: () {
              this.onTap();
            },
          ),
        ),
      ),
    );
  }
}
