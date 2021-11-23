void main() {
  saudacoes("André Henrique", );
  
}

void saudacoes(
  String nome, {
  bool mostrarAgora = true,
 // bool mostrarCliente = false,
  String? cliente,
}) {
  print("Saudações ${nome.toUpperCase()}");
  //uma variavel recebendo um valor nulo, transformando ela em non-nulable.
  //Null-aware 
  String c = cliente ?? 'Não informado';
  //if(cliente != null){
    print("Seja bem-vindo(a) ${c.toUpperCase()}!");
 // }
  if (mostrarAgora) {
    print("Agora: ${agora()}");
  }
} 
//Retorna uma string, portando não pode ser void
String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}