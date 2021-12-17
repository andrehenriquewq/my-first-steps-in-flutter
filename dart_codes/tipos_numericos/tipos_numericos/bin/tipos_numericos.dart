void main(List<String> arguments) {
  //Qualquer tipo de numero
  num age = 22;
  //Inteiro
  int people = 5;
  //Decimais
  double decimal = 20.02;
  //Conversão de tipos, string para inteiro, vice-versa
  int test = int.parse('12');
  double test2 = double.parse('10');
  //Captura de erro
  int erro = int.parse('12.01', onError: (source) => 0);
  print("Ops, deu erro! ${erro}");
  //Calculos
  num dogyears = 7;
  num dogage = age * dogyears;
  print('A sua idade em anos de cachorro é: $dogage');
}