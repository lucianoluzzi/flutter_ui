import 'package:alura_advanced_ui/modelos/item_carrinnho.dart';
import 'package:alura_advanced_ui/modelos/movel.dart';
import 'package:alura_advanced_ui/paginas/main.dart';
import 'package:flutter/material.dart';

class ListaCarrinho extends StatefulWidget {
  final Function _atualiza;
  ListaCarrinho(this._atualiza);

  @override
  _ListaCarrinhoState createState() => _ListaCarrinhoState();
}

class _ListaCarrinhoState extends State<ListaCarrinho> {
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
                Expanded(
                  child: Container(
                    height: 92,
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(movel.titulo),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${movel.preco}"),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(4),
                                    child: InkWell(
                                      onTap: () => _aumentarQuantidade(item),
                                      child: Container(
                                        margin: EdgeInsets.all(4),
                                        child: Icon(
                                          Icons.add,
                                          size: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text("${item.quantidade}"),
                                  Container(
                                    margin: EdgeInsets.all(4),
                                    child: InkWell(
                                      onTap: () => _diminuitQuantidade(item),
                                      child: Container(
                                        margin: EdgeInsets.all(4),
                                        child: Icon(
                                          Icons.remove,
                                          size: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
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

  _aumentarQuantidade(ItemCarrinho item) {
    setState(() {
      item.quantidade++;
      widget._atualiza();
    });
  }

  _diminuitQuantidade(ItemCarrinho item) {
    if (item.quantidade >= 1) {
      setState(() {
        item.quantidade--;
        widget._atualiza();
      });
    } else
       _remover(item);
  }

  _remover(ItemCarrinho itemCarrinho) {
    setState(() {
      Inicio.listaCarrinho.remove(itemCarrinho);
      widget._atualiza();
    });
  }
}
