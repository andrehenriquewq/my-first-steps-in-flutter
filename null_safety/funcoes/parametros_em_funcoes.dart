void main() {
  saudacoes("André Henrique");
  //só é false se vc passar o valor.
  saudacoes("André Henrique", mostrarAgora: false, sep: 'x');
}

//não possui nenhum retorno, apenas executa.
/*
colocando dentro de [colchetes] 
o torna um parâmetro opcional(posicional)
e com um valor padrão. 

colocando dentro de {chaves} 
o torna um parâmetro opcional(nomeados)
e com um valor padrão. 
*/
void saudacoes(String nome, {bool mostrarAgora = true, String sep = '-'}) {
  print(sep * 28);
  print("Saudações $nome");
  print("Seja bem-vindo");
  if (mostrarAgora) {
    print("Agora: ${agora()}");
  }
}

//Retorna uma string, portando não pode ser void
String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
