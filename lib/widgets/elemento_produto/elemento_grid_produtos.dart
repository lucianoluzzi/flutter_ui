import 'package:alura_advanced_ui/modelos/movel.dart';
import 'package:alura_advanced_ui/paginas/detalhes.dart';
import 'package:alura_advanced_ui/widgets/elemento_produto/degrade_elemento_produto.dart';
import 'package:alura_advanced_ui/widgets/elemento_produto/imagem_elemento_grid_produtos.dart';
import 'package:alura_advanced_ui/widgets/elemento_produto/titulo_elemento_produto.dart';
import 'package:flutter/material.dart';

class ElementoGridProdutos extends StatelessWidget {
  final Movel movel;

  ElementoGridProdutos({@required this.movel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detalhes(
              movel: movel,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(spreadRadius: 2, blurRadius: 8, color: Colors.black12)
        ]),
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ImagemElementoGridProdutos(
                imagem: movel.foto,
              ),
              DegradeElementoProduto(),
              TituloElementoProduto(
                titulo: movel.titulo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
