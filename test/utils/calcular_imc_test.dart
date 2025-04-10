import 'package:test/test.dart';
import '../../models/pessoa.dart';
import '../../utils/calcular_imc.dart';

void main(){
  test('O IMC deve ser calculado corretamente', (){
    final pessoa = Pessoa(nome: 'Renan', altura: 1.70, peso:80);
    final imc = calcularIMC(pessoa);
    expect(imc, 27.68);
  });

  test('O IMC não pode ser calculado caso a altura seja <=0', (){
    final pessoa = Pessoa(nome: 'Renan', altura: 0, peso:80);
    expect(() => calcularIMC(pessoa), throwsArgumentError);
  });

  test('O IMC não pode ser calculado caso o peso seja <=0', (){
    final pessoa = Pessoa(nome: 'Renan', altura: 1.70, peso:0);
    expect(() => calcularIMC(pessoa), throwsArgumentError);
  });
  test('O IMC não pode ser calculado caso a altura seja negativa', (){
    final pessoa = Pessoa(nome: 'Renan', altura: -1.70, peso:80);
    expect(() => calcularIMC(pessoa), throwsArgumentError);
  });
  test('O IMC não pode ser calculado caso o peso seja negativo', (){
    final pessoa = Pessoa(nome: 'Renan', altura: 1.70, peso:-80);
    expect(() => calcularIMC(pessoa), throwsArgumentError);
  });
}