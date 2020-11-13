import 'package:alura_advanced_ui/modelos/movel.dart';
import 'package:alura_advanced_ui/widgets/text_detalhes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CardDetalhes extends StatelessWidget {
  final Movel movel;
  final _formatacaoReais = NumberFormat.currency(locale: 'pt_BR');

  CardDetalhes({@required this.movel});

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
                  onPressed: () {},
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
}
