import 'dart:convert';
import 'dart:io';

import 'package:meu_app_calculadora_imc/calculos.dart';
import 'package:meu_app_calculadora_imc/classes/pessoa.dart';

void main(List<String> arguments) {
  var p1 = new Pessoa("", 0.0, 0.0);
  try {
    print("Informe seu nome");
    var nome = stdin.readLineSync(encoding: utf8);
    p1.setNome(nome ?? "");

    print("Informe seu peso");
    var peso = stdin.readLineSync(encoding: utf8);
    p1.setPeso(double.parse(peso ?? ""));

    print("Informe sua altura");
    var altura = stdin.readLineSync(encoding: utf8);
    p1.setAltura(double.parse(altura ?? ""));

    var solucao = new calculos();
    print(p1.getNome() + solucao.calculoImc(p1.getPeso(), p1.getAltura()));
  } catch (e) {
    print(e.toString());
  }
}
