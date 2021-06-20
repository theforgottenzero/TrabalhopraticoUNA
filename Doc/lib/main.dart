import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'receita.dart';
import 'lista_receitas.dart';
import 'pesquisa.dart';
//import 'consulta_api.dart';
//import 'nutrientes_receita.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Good Food',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final Receita receita = receitas[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Good_Food_background1.jpg'), 
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 200,
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Carousel(
                  dotSize: 7,
                  dotBgColor: Colors.transparent,
                  images: [
                    InkWell(
                      onTap: (){
                        print('c');
                      },
                      child: Image.asset(
                        'assets/imagens/escondidinho-de-frigideira.jpg',
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        print('d');
                      },
                      child: Image.asset(
                        'assets/imagens/receita-lasanha-berinjela-a-napolitana.jpg',
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        print('e');
                      },
                      child: Image.asset(
                        'assets/imagens/mingau-sem-leite.jpg',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                color: Colors.red,
                child: SizedBox(
                  width: 42.0,
                  height: 42.0,
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    ),
                    onPressed: () {
                      print('b');
                    },
                    child: Text('Informações nutricionais'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ReceitasListaWidget(receita)),
          );
        },
        child: const Icon(
          Icons.lunch_dining,
          color: Colors.green,
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}