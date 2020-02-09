import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  final String message;
  final String tittle;

  AlertWidget({@required this.tittle, @required this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: new Text(tittle),
      content: new Text(message),
      actions: <Widget>[
        // usually buttons at the bottom of the dialog
        new FlatButton(
          child: new Text("Cerrar"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
