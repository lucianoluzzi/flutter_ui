import 'package:alura_advanced_ui/modelos/movel.dart';
import 'package:alura_advanced_ui/widgets/elemento_produto/elemento_grid_produtos.dart';
import 'package:flutter/material.dart';

class GridProdutos extends StatelessWidget {
  final moveis;

  GridProdutos({this.moveis});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final movel = Movel.fromJson(moveis[index]);
          return ElementoGridProdutos(
            movel: movel,
          );
        },
        itemCount: moveis.length,
      ),
    );
  }
}
