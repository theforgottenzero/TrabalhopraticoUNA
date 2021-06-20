import 'package:meta/meta.dart'
import 'package:flutter/material.dart';

class User {
  final String id;
  final String nome;
  final String email;
  final String peso;
  final String altura; 
  final String sexo biologico;
  final String fotoUrl;
  

  const User ({
    this.id,
    @required this.nome,
    @required this.email,
    @Required this.peso,
    @required this.altura,
    @Required this.sexo biologico,
    @Required this.fotoUrl,
  });

  
}