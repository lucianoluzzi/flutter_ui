import 'package:alura_advanced_ui/modelos/item_carrinnho.dart';
import 'package:alura_advanced_ui/modelos/movel.dart';
import 'package:alura_advanced_ui/paginas/main.dart';
import 'package:alura_advanced_ui/widgets/text_detalhes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CardDetalhes extends StatelessWidget {
  final Movel movel;
  final _formatacaoReais = NumberFormat.currency(locale: 'pt_BR');
  final Function atualizaPagina;

  CardDetalhes({@required this.movel, this.atualizaPagina});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextoDetalhes(
            text: movel.titulo,
            textStyle: Theme.of(context).textTheme.headline1,
          ),
          TextoDetalhes(text: movel.descricao),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _formatacaoReais.format(movel.preco),
                  style: Theme.of(context).textTheme.headline1,
                ),
                FlatButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    _adicionarItemCarrinho(ItemCarrinho(
                      quantidade: 1,
                      movel: movel,
                    ));
                  },
                  child: Text(
                    'Comprar',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _adicionarItemCarrinho(ItemCarrinho item) {
    _addOrIncrease(Inicio.listaCarrinho, item);
    atualizaPagina();
  }

  bool _addOrIncrease(List<ItemCarrinho> items, ItemCarrinho item) {
    int itemIndex = items.indexWhere((item) => item.movel == movel);
    if (itemIndex != -1) {
      items[itemIndex].quantidade++;
    } else {
      Inicio.listaCarrinho.add(item);
    }
  }
}
