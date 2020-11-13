import 'package:flutter/material.dart';

class TextoDetalhes extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  TextoDetalhes({@required this.text, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 8),
      child: _styleText(text),
    );
  }

  _styleText(text) {
    if (textStyle != null) {
      return Text(
        text,
        style: textStyle,
      );
    }

    return Text(text);
  }
}
