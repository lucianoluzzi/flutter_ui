import 'package:alura_advanced_ui/paginas/main.dart';
import 'package:alura_advanced_ui/widgets/indicador_botao_carrinho.dart';
import 'package:flutter/material.dart';

class BotaoCarrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/carrinho');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100), bottomLeft: Radius.circular(100)),
        ),
        height: 40,
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20, left: 20),
        child: Stack(children: [
          Image(
            height: 30,
            image: AssetImage('utilidades/assets/icones/carrinho.png'),
          ),
          Visibility(
            visible: _isIndicadorVisible(),
            child: IndicadorBotaoCarrinho(),
          )
        ]),
      ),
    );
  }

  _isIndicadorVisible() {
    return Inicio.listaCarrinho.length > 0;
  }
}
