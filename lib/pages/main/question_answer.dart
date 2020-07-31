import 'package:flutter/material.dart';

class QuestionAnswerPage extends StatelessWidget {
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
              BlobAnswer(left: 50, top: 50),
              BlobAnswer(),
              BlobAnswer(),
              BlobAnswer(),
            ],
          ),
        ),
      ),
    );
  }
}

class BlobAnswer extends StatelessWidget {
  final double left;
  final double top;

  const BlobAnswer({
    Key key,
    this.left = 50,
    this.top = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: this.left,
      top: this.top,
      child: Material(
        elevation: 4.0,
        shape: CircleBorder(
          side: BorderSide(
            color: Theme.of(context).primaryColorLight,
            width: 2,
          ),
        ),
        clipBehavior: Clip.hardEdge,
        // color: Colors.transparent,
        color: Theme.of(context).primaryColorDark,
        child: InkWell(
          child: SizedBox(
            width: 100,
            height: 100,
            child: Center(
              child: Text(
                "Hello",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
          onTap: () {
            print("value of your text");
          },
        ),
      ),
    );
  }
}
