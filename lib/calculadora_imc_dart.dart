class CalculadoraImc{

  double _altura = 0;
  double _peso = 0;

  void setAltura(double altura){
    _altura = altura;
  }

  double getAltura(){
    return _altura;
  }

  void setPeso(double peso){
    _peso = peso;
  }

  double getPeso(){
    return _peso;
  }

  double calculaImc(){
    return double.parse((_peso / (_altura * _altura)).toStringAsFixed(2));
  }

  String classificacaoImc(double imc){

    String classificacao = '';

    if(imc < 16){
      classificacao = "Magreza extrema";
    }else if(imc >= 16 && imc < 17){
      classificacao = "Magreza moderada";
    }else if(imc >= 17 && imc < 18.5){
      classificacao = "Magreza leve";
    }else if(imc >= 18.5&& imc < 25){
      classificacao = "Saudável";
    }else if(imc >= 25 && imc < 30){
      classificacao = "Sobrepeso";
    }else if(imc >= 30 && imc < 35){
      classificacao = "Obesidade grau I";
    }else if(imc >= 35 && imc < 40){
      classificacao = "Obesidade grau II(severa)";
    }else{
      classificacao = "Obesidade grau III(mórbida)";
    }
    return classificacao;
  }


}
