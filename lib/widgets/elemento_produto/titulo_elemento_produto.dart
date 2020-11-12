import 'package:flutter/material.dart';

class TituloElementoProduto extends StatelessWidget {
  final String titulo;

  TituloElementoProduto({@required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      child: Text(titulo),
    );
  }
}
