import 'package:alura_advanced_ui/modelos/movel.dart';
import 'package:alura_advanced_ui/widgets/card_detalhes.dart';
import 'package:alura_advanced_ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  final Movel movel;

  Detalhes({@required this.movel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('utilidades/assets/imagens/${movel.foto}'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(32),
            height: 200,
            child: CardDetalhes(
              movel: movel,
            ),
          ),
        ),
      ),
    );
  }
}
