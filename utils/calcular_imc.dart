import '../models/pessoa.dart';

double calcularIMC(Pessoa pessoa) {
  if (pessoa.getAltura <= 0) {
    throw ArgumentError('Altura não pode ser negativa ou zero!');
  }
  if (pessoa.getPeso <= 0) {
    throw ArgumentError('Peso não pode ser negativo ou zero!');
  }

  double imc = pessoa.getPeso / (pessoa.getAltura * pessoa.getAltura);
  return double.parse(imc.toStringAsFixed(2));
}
