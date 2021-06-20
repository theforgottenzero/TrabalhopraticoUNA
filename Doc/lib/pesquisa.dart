import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'receita.dart';
import 'lista_receitas.dart';

class ReceitasListaWidget extends StatelessWidget {
  final Receita receita;

  ReceitasListaWidget(this.receita){
    @override
    Widget build(BuildContext context){
      return Scaffold(
        body: ListTile(
          /*onTap: () => ReceitaSelecionada(context),*/
          title: Text(receita.nome,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
          ),
          leading: Image.network(receita.imagemUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
          ),
        ),
      );
    };
  }

  /*void ReceitaSelecionada(BuildContext context) {
    Navigator.push(context, MaterialPageRoute<void>(
      builder: (BuildContext context) => TelaReceitaWidget(receita),
    ),);
  }*/
}

class TelaReceitaWidget extends StatelessWidget {
  final Receita receita;

  TelaReceitaWidget(this.receita) {
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text(receita.nome),
        ),
        body: SizedBox(
          child: Image.network(receita.imagemUrl,
            fit: BoxFit.cover,
          ),
        ),
      );
    };
  }
}