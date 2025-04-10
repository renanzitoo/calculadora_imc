import 'dart:io';

import 'models/pessoa.dart';
import 'utils/calcular_imc.dart';

void main(List<String> arguments) {
  print('Digite o nome da pessoa');
  String? nome = stdin.readLineSync();

  print('Digite a altura da pessoa (em metros)');
  double? altura = double.tryParse(stdin.readLineSync()!);

  print('Digite o peso da pessoa (em kg)');
  double? peso = double.tryParse(stdin.readLineSync()!);

  Pessoa pessoa = Pessoa(
    nome: nome!,
    altura: altura!,
    peso: peso!,
  );
  print('O IMC de ${pessoa.getNome} é: ${calcularIMC(pessoa)}');
}