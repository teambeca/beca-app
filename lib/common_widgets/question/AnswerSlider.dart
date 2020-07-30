import 'package:beca_app/bloc/question_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnswerSlider extends StatefulWidget {
  final void Function(double value) onChange;

  const AnswerSlider({
    Key key,
    this.onChange,
  }) : super(key: key);

  @override
  _AnswerSliderState createState() => _AnswerSliderState();
}

class _AnswerSliderState extends State<AnswerSlider> {
  //TODO: Slider Value doesn't reset
  double _sliderVal = 0.0;

  _AnswerSliderState();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      builder: (context, questionState) {
        if (questionState.questionType == 0) return Container();

        double _min;
        double _max;
        int _divisions;

        switch (questionState.questionType) {
          case 1:
            _min = -5;
            _max = 5;
            _divisions = 10;
            break;
          case 2:
            _min = -5;
            _max = 5;
            _divisions = 10;
            break;
          case 3:
            _min = 0;
            _max = 5;
            _divisions = 5;
            break;
          default:
            break;
        }

        return Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 35,
                      decoration: new BoxDecoration(
                        color: Theme.of(context).primaryColorDark,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        iconSize: 15,
                        color: Colors.white,
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            if (_sliderVal > _min) {
                              _sliderVal -= 1;
                              widget.onChange(_sliderVal);
                            }
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: Slider(
                        activeColor: Theme.of(context).primaryColorDark,
                        inactiveColor: Theme.of(context).primaryColorDark,
                        label: "${_sliderVal.ceil()}",
                        divisions: _divisions,
                        min: _min,
                        max: _max,
                        value: _sliderVal,
                        onChanged: (value) {
                          setState(() {
                            _sliderVal = value;
                            widget.onChange(_sliderVal);
                          });
                        },
                      ),
                    ),
                    Container(
                      height: 35,
                      decoration: new BoxDecoration(
                        color: Theme.of(context).primaryColorDark,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        iconSize: 15,
                        color: Colors.white,
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            if (_sliderVal < _max) {
                              _sliderVal += 1;
                              widget.onChange(_sliderVal);
                            }
                          });
                        },
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 8.0),
                    //   child: Container(
                    //     height: 40,
                    //     width: 40,
                    //     alignment: Alignment.center,
                    //     decoration: new BoxDecoration(
                    //       color: Theme.of(context).primaryColorDark,
                    //       shape: BoxShape.circle,
                    //     ),
                    //     child: Text(
                    //       "${_sliderVal.ceil()}",
                    //       style: Theme.of(context)
                    //           .textTheme
                    //           .headline6
                    //           .copyWith(color: Colors.white),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 40,
                      alignment: Alignment.center,
                      decoration: new BoxDecoration(
                        color: Theme.of(context).primaryColorDark,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        "${_sliderVal.ceil()}",
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
