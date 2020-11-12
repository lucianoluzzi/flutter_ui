import 'package:alura_advanced_ui/widgets/botao_carrinho.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool isPaginaCarrinho;

  CustomAppBar({this.title, this.isPaginaCarrinho = false});

  @override
  Widget build(BuildContext context) {
    final title = this.title != null ? this.title : "";

    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      actions: <Widget>[
        Visibility(
          visible: !isPaginaCarrinho,
          child: BotaoCarrinho(),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
