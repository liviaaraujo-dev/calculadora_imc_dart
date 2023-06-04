import 'package:calculadora_imc_dart/calculadora_imc_dart.dart';
import 'package:test/test.dart';

void main() {

  test('Calculo do imc', () {

    CalculadoraImc calculadoraImc = CalculadoraImc();

    calculadoraImc.setAltura(1.50);
    calculadoraImc.setPeso(50);

    expect(calculadoraImc.calculaImc(), 22.22);
    expect(calculadoraImc.classificacaoImc(calculadoraImc.calculaImc()), "Saudável");
  });
}
