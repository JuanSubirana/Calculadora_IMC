class calculos {
  String calculoImc(double peso, double altura) {
    var resultado = peso / (altura * altura);
    var verificacao = this.verificacao(resultado);
    return " O IMC $resultado, $verificacao";
  }

  String verificacao(double resultado) {
    if (resultado < 16) {
      return "Magreza grave";
    } else if (resultado < 17) {
      return "Magreza moderada";
    } else if (resultado < 18.5) {
      return "Magreza leve";
    } else if (resultado < 25) {
      return "Saudável";
    } else if (resultado < 30) {
      return "Sobrepeso";
    } else if (resultado < 35) {
      return "Obesidade grau I";
    } else if (resultado < 40) {
      return "Obesidade grau II(severa)";
    } else {
      return "Obesidade grau III (mórbida)";
    }
  }
}
