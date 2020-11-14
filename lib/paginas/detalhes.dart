import 'package:alura_advanced_ui/modelos/movel.dart';
import 'package:alura_advanced_ui/widgets/card_detalhes.dart';
import 'package:alura_advanced_ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Detalhes extends StatefulWidget {
  final Movel movel;

  Detalhes({@required this.movel});

  @override
  _DetalhesState createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('utilidades/assets/imagens/${widget.movel.foto}'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(30),
            child: Wrap(
              children: [
                CardDetalhes(
                  atualizaPagina: atualiza,
                  movel: widget.movel,
                ),
              ],
            ),
          ),
          // Container(
          //   margin: EdgeInsets.all(32),
          //   height: 205,
          //   child: CardDetalhes(
          //     movel: movel,
          //   ),
          // ),
        ),
      ),
    );
  }

  atualiza() {
    setState(() {});
  }
}
