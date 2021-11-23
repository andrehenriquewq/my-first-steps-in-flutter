/*
void main() {
  saudacoes("André Henrique", corpo: funcao);
}
void funcao(int i){
for (int j = 1; j <= i; j++) {
  print("Olá $j");
}
}
*/
//função anonima
void main() {
  saudacoes("André Henrique", corpo: (int i) {
    for (int j = 1; j <= i; j++) {
      print("Olá $j");
    }
  });
}

void funcao(int i) {
  for (int j = 1; j <= i; j++) {
    print("Olá $j");
  }
}

void saudacoes(
  String nome, {
  bool mostrarAgora = true,
  String? cliente,
  //parâmetro do tipo function
  required Function(int) corpo,
}) {
  print("Saudações do ${nome.toUpperCase()}");
  corpo(3);
  String c = cliente ?? 'Não informado';
  print("Seja bem-vindo, ${c.toUpperCase()}!");

  if (mostrarAgora) {
    print("Agora: ${agora()}");
  }
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
