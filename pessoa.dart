class Pessoa {
  String nomePessoa = '';
  double peso = 0.0;
  double altura = 0.0;

  execPessoa(double imc, String classificacao) {
    print(
        "Meu nom é $nomePessoa, tenho $altura de altura e peso $peso.\nO meu IMC deu $imc, isso significa que estou na classificação $classificacao");
  }
}
