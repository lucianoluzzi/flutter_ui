import 'package:flutter/material.dart';

class TextoDetalhes extends StatelessWidget {
  final String text;

  TextoDetalhes({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 8),
      child: Text(text),
    );
  }
}
