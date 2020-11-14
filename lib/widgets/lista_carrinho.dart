import 'package:alura_advanced_ui/modelos/item_carrinnho.dart';
import 'package:alura_advanced_ui/modelos/movel.dart';
import 'package:alura_advanced_ui/paginas/main.dart';
import 'package:flutter/material.dart';

class ListaCarrinho extends StatelessWidget {
  final List<ItemCarrinho> items = Inicio.listaCarrinho;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        ItemCarrinho item = items[index];
        Movel movel = item.movel;

        return Container(
          margin: EdgeInsets.all(16),
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: [
                Image(
                  height: 92,
                  image: AssetImage("utilidades/assets/imagens/${movel.foto}"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(movel.titulo),
                        Text("${movel.preco}"),
                        Text("${item.quantidade}"),
                      ]
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: items.length,
    );
  }
}
