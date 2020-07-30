import 'package:beca_app/bloc/becca_bot_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BeccaBotPage extends StatefulWidget {
  @override
  _BeccaBotPageState createState() => _BeccaBotPageState();
}

class _BeccaBotPageState extends State<BeccaBotPage> {
  final _formKey = GlobalKey<FormState>();
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Becca Bot"),
      ),
      body: BlocListener<BeccaBotBloc, BeccaBotState>(
        listener: (context, state) {
          if (state is BeccaBotFailure) {
            Scaffold.of(context).showSnackBar(
                SnackBar(content: Text("Beklenmedik hata gerçekleşti")));
          }
        },
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Form(
            key: _formKey,
            child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (OverscrollIndicatorNotification overScroll) {
                overScroll.disallowGlow();
                return false;
              },
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: BlocBuilder<BeccaBotBloc, BeccaBotState>(
                        builder: (context, beccaBotState) {
                          if (beccaBotState is BeccaBotSuccess)
                            return Card(
                              margin: const EdgeInsets.only(
                                left: 0.0,
                                right: 0.0,
                                top: 0.0,
                                bottom: 20.0,
                              ),
                              child: Container(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(beccaBotState.message),
                                  )),
                            );
                          if (beccaBotState is BeccaBotInProgress)
                            return Center(child: CircularProgressIndicator());
                          return Card(
                            margin: const EdgeInsets.only(
                              left: 0.0,
                              right: 0.0,
                              top: 0.0,
                              bottom: 20.0,
                            ),
                            child: Container(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      "Becca Bot'unuz denemenizi bekliyor"),
                                )),
                          );
                        },
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: TextFormField(
                              maxLength: 50,
                              controller: _messageController,
                              validator: (value) {
                                if (value.isEmpty)
                                  return 'Lütfen buraya bir paragraf başlangıcı yazın';
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
                                hintText:
                                    'Buraya bir paragraf başlangıcı yazın...',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
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
                                  FocusScope.of(context).unfocus();
                                  context.bloc<BeccaBotBloc>().add(
                                        BeccaBotPost(
                                          message: _messageController.text,
                                        ),
                                      );
                                }
                              },
                              child: Text('GÖNDER'),
                            ),
                          ),
                        ),
                      ],
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
