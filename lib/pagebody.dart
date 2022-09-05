import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget pageBody(String nomeAudio, String descAudio,) {
  return Column(
    children: [
      FlatButton(onPressed: null,
          child: Text('Nome')),

      FlatButton(onPressed: null,
          child: Text('Descrição')),

      FlatButton(onPressed: null,
          child: Text('Action')),
    ],
  );
}