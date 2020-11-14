import 'package:alura_advanced_ui/widgets/custom_appbar.dart';
import 'package:alura_advanced_ui/widgets/lista_carrinho.dart';
import 'package:flutter/material.dart';

class Carrinho extends StatefulWidget {
  @override
  _CarrinhoState createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(
        title: 'Carrinho',
        isPaginaCarrinho: true,
      ),
      body: ListaCarrinho(_atualiza),
    );
  }

  _atualiza() {
    setState(() {});
  }
}
