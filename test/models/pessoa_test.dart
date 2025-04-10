import 'package:test/test.dart';
import '../../models/pessoa.dart';

void main(){
  test('A pessoa deve ser feita corretamente', (){
    final pessoa = Pessoa(nome: 'Renan', altura: 1.70, peso:80);
    expect(pessoa.getNome, 'Renan');
    expect(pessoa.getAltura, 1.70);
    expect(pessoa.getPeso, 80);
    });

}