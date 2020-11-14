import 'package:alura_advanced_ui/modelos/item_carrinnho.dart';
import 'package:alura_advanced_ui/paginas/carrinho.dart';
import 'package:alura_advanced_ui/paleta_cores.dart';
import 'package:alura_advanced_ui/widgets/custom_appbar.dart';
import 'package:alura_advanced_ui/widgets/grid_produtos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {'/carrinho': (context) => Carrinho()},
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 20, fontFamily: 'Alata', fontWeight: FontWeight.bold, color: Colors.black),
          headline2: TextStyle(fontSize: 20, fontFamily: 'Alata', fontWeight: FontWeight.bold, color: Colors.white),
        ),
        primarySwatch: PaletaCores().lilas,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  static List<ItemCarrinho> listaCarrinho = [];
  final moveis = [
    {
      "titulo": "Mesa",
      "preco": 300,
      "foto": "movel1.jpeg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Cadeira",
      "preco": 120,
      "foto": "movel2.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Manta",
      "preco": 200,
      "foto": "movel3.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Sofá Cinza",
      "preco": 800,
      "foto": "movel4.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Mesa de cabeceira",
      "preco": 400,
      "foto": "movel5.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Jogo de Cama",
      "preco": 250,
      "foto": "movel6.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Sofá Branco",
      "preco": 900,
      "foto": "movel7.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(title: 'Lojinha Alura'),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 30, right: 20, top: 10, bottom: 10
                    ),
                      child: Divider(),
                  ),
              ),
              Text('Produto'),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                      left: 30, right: 20, top: 10, bottom: 10
                  ),
                  child: Divider(),
                ),
              ),
            ],
          ),
          Flexible(
            child: GridProdutos(
              moveis: moveis,
            ),
          ),
        ],
      ),
    );
  }
}
