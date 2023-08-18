import 'dart:io';

import 'pessoa.dart';

void main() {
  Pessoa pessoa = new Pessoa();
  double resultadoIMC = 0;
  String classificacao = '';

  stdout.writeln("Qual é o seu nome?");
  pessoa.nomePessoa = stdin.readLineSync().toString();

  stdout.writeln("Qual é o seu peso?");
  pessoa.peso = double.parse(stdin.readLineSync().toString());

  stdout.writeln("Qual é a sua altura?");
  pessoa.altura = double.parse(stdin.readLineSync().toString());

  resultadoIMC = pessoa.peso / (pessoa.altura * 2);

  if (resultadoIMC < 16) {
    classificacao = 'Magreza leve';
  } else if (resultadoIMC < 17) {
    classificacao = 'Magreza moderada';
  } else if (resultadoIMC < 18.5) {
    classificacao = 'Magreza leve';
  } else if (resultadoIMC < 25) {
    classificacao = 'Saudável';
  } else if (resultadoIMC < 30) {
    classificacao = 'Sobrepeso';
  } else if (resultadoIMC < 35) {
    classificacao = 'Obesidade Grau 1';
  } else if (resultadoIMC < 40) {
    classificacao = 'Obesidade Grau 2';
  } else if (resultadoIMC >= 40) {
    classificacao = 'Obesidade Grau 3';
  }

  pessoa.execPessoa(resultadoIMC, classificacao);
}
