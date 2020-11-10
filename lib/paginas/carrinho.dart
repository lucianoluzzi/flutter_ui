import 'package:alura_advanced_ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Carrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(
        title: 'Carrinho',
        isPaginaCarrinho: true,
      ),
      body: Text('Estamos no carrinho'),
    );
  }
}
