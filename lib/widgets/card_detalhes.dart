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
        children: [
          TextoDetalhes(text: movel.titulo),
          TextoDetalhes(text: movel.descricao),
          Row(
            children: [
              Text(_formatacaoReais.format(movel.preco)),
              FlatButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {

                },
                child: Text('Comprar'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
