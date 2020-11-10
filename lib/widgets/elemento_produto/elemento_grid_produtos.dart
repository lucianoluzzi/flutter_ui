import 'package:alura_advanced_ui/modelos/movel.dart';
import 'package:alura_advanced_ui/widgets/elemento_produto/imagem_elemento_grid_produtos.dart';
import 'package:flutter/material.dart';

class ElementoGridProdutos extends StatelessWidget {
  final Movel movel;

  ElementoGridProdutos({@required this.movel});

  @override
  Widget build(BuildContext context) {
    return ImagemElementoGridProdutos(
      imagem: movel.foto,
    );
  }
}
