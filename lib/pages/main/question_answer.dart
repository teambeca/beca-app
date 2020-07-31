import 'package:flutter/material.dart';

typedef void QuestionAnswerPageOnTap(int selectedValue);

class BlobColor {
  Color borderColor;
  Color insideColor;

  BlobColor(this.borderColor, this.insideColor);
}

List<BlobColor> blobColors = [
  BlobColor(
    Color.fromARGB(255, 41, 67, 78),
    Color.fromARGB(255, 84, 110, 122),
  ),
  BlobColor(
    Color.fromARGB(255, 255, 112, 67),
    Color.fromARGB(255, 255, 162, 112),
  ),
  BlobColor(
    Color.fromARGB(255, 0, 150, 136),
    Color.fromARGB(255, 82, 199, 184),
  ),
  BlobColor(
    Color.fromARGB(255, 33, 150, 243),
    Color.fromARGB(255, 77, 171, 245),
  ),
  BlobColor(
    Color.fromARGB(255, 176, 0, 58),
    Color.fromARGB(255, 233, 30, 99),
  ),
  BlobColor(
    Color.fromARGB(255, 0, 103, 91),
    Color.fromARGB(255, 0, 150, 136),
  ),
  BlobColor(
    Color.fromARGB(255, 198, 63, 23),
    Color.fromARGB(255, 255, 112, 67),
  ),
];

class QuestionAnswerPage extends StatefulWidget {
  final QuestionAnswerPageOnTap onTap;

  QuestionAnswerPage({this.onTap});

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
                  widget.onTap(0);
                },
                radius: 100,
                text: "Özne",
                left: 40,
                top: 150,
                borderColor: blobColors[0].borderColor,
                insideColor: blobColors[0].insideColor,
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
                  widget.onTap(1);
                },
                radius: 150,
                text: "Zarf Tümleci",
                left: 200,
                top: 110,
                borderColor: blobColors[1].borderColor,
                insideColor: blobColors[1].insideColor,
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
                  widget.onTap(2);
                },
                radius: 130,
                text: "Belirtili Nesne",
                left: 140,
                top: 280,
                borderColor: blobColors[2].borderColor,
                insideColor: blobColors[2].insideColor,
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
                  widget.onTap(3);
                },
                radius: 120,
                text: "Yüklem",
                left: 40,
                top: 410,
                borderColor: blobColors[3].borderColor,
                insideColor: blobColors[3].insideColor,
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
                  widget.onTap(4);
                },
                radius: 150,
                text: "Belirtisiz Nesne",
                left: 250,
                top: 380,
                borderColor: blobColors[4].borderColor,
                insideColor: blobColors[4].insideColor,
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
                  widget.onTap(5);
                },
                radius: 125,
                text: "Diğer",
                left: 40,
                top: 570,
                borderColor: blobColors[5].borderColor,
                insideColor: blobColors[5].insideColor,
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
                  widget.onTap(6);
                },
                radius: 110,
                text: "Dolaylı Tümleç",
                left: 210,
                top: 530,
                borderColor: blobColors[6].borderColor,
                insideColor: blobColors[6].insideColor,
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
