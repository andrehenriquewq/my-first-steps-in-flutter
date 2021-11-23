void main(){
  saudacoes();
}

//não possui nenhum retorno, apenas executa
void saudacoes(){
  print("Saudações a você");
  print("Seja bem-vindo");
  print("Agora: ${agora()}");
}

//Retorna uma string, portando não pode ser void
String agora(){
  DateTime agora = DateTime.now();
  return agora.toString();
}