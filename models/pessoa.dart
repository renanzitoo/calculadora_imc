class Pessoa {
  String _nome;
  double _altura;
  double _peso;

  Pessoa({
    required String nome,
    required double altura, 
    required double peso,
  }) :  _nome = nome,
        _altura = altura,
        _peso = peso;

  String get getNome => _nome;
  set setNome(String newNome){
    if(newNome.isNotEmpty){
      _nome = newNome;
    } else {
      throw ArgumentError('Nome não pode ser vazio!');
    }
  }

  double get getAltura => _altura;
  set setAltura(double newAltura){
    if(newAltura > 0){
      _altura = newAltura;
    } else {
      throw ArgumentError('Altura não pode ser negativa ou zero!');
    }
  }

  double get getPeso => _peso;
  set setPeso(double newPeso){
    if(newPeso > 0){
      _peso = newPeso;
    } else {
      throw ArgumentError('Peso não pode ser negativo ou zero!'); 
    }
  }



  
  
}
