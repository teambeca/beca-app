import 'package:beca_app/bloc/question_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionInfoAppBar extends StatelessWidget {
  const QuestionInfoAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      builder: (context, questionState) {
        var _text = "";

        switch (questionState.questionType) {
          case 0:
            _text =
                "Cümleyi öğelerine ayırabilmek için, bir kelimeye dokunun ve kelime türünü seçin. Soruda bir problem olduğunu düşünüyorsanız, ünlem işareti ikonuna dokunarak soruyu bildirin.";
            break;
          case 1:
            _text =
                "Cümlenin ne kadar olumlu yada ne kadar olumsuz olduğunu işaretleyin. Tarafsız cümleler için “0” seçebilirsiniz. Soruda bir problem olduğunu düşünüyorsanız, ünlem işareti ikonuna dokunarak soruyu bildirin.";
            break;
          case 2:
            _text =
                "Kelimenin ne kadar olumlu yada ne kadar olumsuz olduğunu işaretleyin. Tarafsız cümleler için “0” seçebilirsiniz. Soruda bir problem olduğunu düşünüyorsanız, ünlem işareti ikonuna dokunarak soruyu bildirin.";
            break;
          case 3:
            _text =
                "İki kelime arasında bulunan bağlantının ve bu bağlantının ne kadar fazla ya da az olduğunu işaretleyin. Örneğin “futbol - top” için 5 verilebilir. Soruda bir problem olduğunu düşünüyorsanız, ünlem işareti ikonuna dokunarak soruyu bildirin.";
            break;
          default:
            _text = "";
            break;
        }

        return Container(
          color: Theme.of(context).primaryColorLight,
          padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
          child: _text.isNotEmpty
              ? Text(
                  _text,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.white),
                )
              : Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
