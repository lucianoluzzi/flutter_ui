import 'package:alura_advanced_ui/paginas/main.dart';
import 'package:alura_advanced_ui/widgets/custom_appbar.dart';
import 'package:alura_advanced_ui/widgets/lista_carrinho.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Carrinho extends StatefulWidget {
  @override
  _CarrinhoState createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  final formatter = NumberFormat.currency(locale: 'pt_BR');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(
        title: 'Carrinho',
        isPaginaCarrinho: true,
      ),
      body: ListaCarrinho(_atualiza),
      bottomNavigationBar: Visibility(
        visible: Inicio.listaCarrinho.isNotEmpty,
        child: Material(
          elevation: 20,
          child: Container(
            color: Colors.white,
            height: 50,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  "${formatter.format(_calcularTotal())}",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _atualiza() {
    setState(() {});
  }

  int _calcularTotal() {
    final itemsCarrinho = Inicio.listaCarrinho;
    return itemsCarrinho
        .map((item) => item.movel.preco * item.quantidade)
        .reduce((currentValue, newPrice) => currentValue + newPrice);
  }
}
