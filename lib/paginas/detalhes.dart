import 'package:alura_advanced_ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Detalhes',
      ),
      body: FlatButton(
        onPressed: () => {Navigator.pushNamed(context, '/carrinho')},
        child: Text('Agora para o carrinho'),
      ),
    );
  }
}
