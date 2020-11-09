import 'package:flutter/material.dart';

class BotaoCarrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100), bottomLeft: Radius.circular(100)),
      ),
      height: 40,
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right: 20, left: 20),
      child: Image(
        height: 30,
        image: AssetImage('utilidades/assets/icones/carrinho.png'),
      ),
    );
  }
}
