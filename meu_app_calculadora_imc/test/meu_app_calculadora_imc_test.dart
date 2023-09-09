import 'package:meu_app_calculadora_imc/calculos.dart';
import 'package:test/test.dart';

void main() {
  test('calcular imc', () {
    var app = new calculos();
    expect(app.calculoImc(80, 1.60),
        equals(' O IMC 31.249999999999993, Obesidade grau I'));
  });
}
