import 'package:beca_app/bloc/feedback_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final _formKey = GlobalKey<FormState>();
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Geri Bildirim"),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          height: double.infinity,
          child: Form(
            key: _formKey,
            child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (OverscrollIndicatorNotification overScroll) {
                overScroll.disallowGlow();
                return false;
              },
              child: BlocListener<FeedbackBloc, FeedbackState>(
                listener: (context, feedbackState) {
                  if (feedbackState is FeedbackSuccess) {
                    _messageController.text = "";
                    FocusScope.of(context).unfocus();
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content:
                            Text("Geri Bildirim iletildi, Teşekkür Ederiz"),
                      ),
                    );
                  }
                  if (feedbackState is FeedbackFailure) {
                    FocusScope.of(context).unfocus();
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Geri Bildirim iletilemedi"),
                      ),
                    );
                  }
                },
                child: Column(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Bize bildirmek istediğiniz problem veya önerilerinizi mesaj kısmında belirtebilir, ekran görüntüsü de ekleyebilirsiniz.",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: TextFormField(
                                keyboardType: TextInputType.multiline,
                                textInputAction: TextInputAction.newline,
                                minLines: 5,
                                maxLines: 5,
                                controller: _messageController,
                                validator: (value) {
                                  if (value.isEmpty) return 'Boş bırakmayınız';
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(4),
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                        topRight: Radius.circular(4)),
                                  ),
                                  filled: true,
                                  hintText: 'Mesajınız',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 20.0, left: 20.0, right: 20.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              color: Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 20),
                              onPressed: () async {
                                if (_formKey.currentState.validate()) {
                                  final _message = _messageController.text;

                                  BlocProvider.of<FeedbackBloc>(context)
                                      .add(FeedbackPost(message: _message));
                                }
                              },
                              child: Text('GÖNDER'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
