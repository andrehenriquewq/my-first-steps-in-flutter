void main(){
  String? nome = funcao(8) ?? 'Não informado';
  print(nome);
}

String? funcao(int x){
  if(x >10) {
    return 'Olá mundo';
  } 
  //se o resultado está fora desse if o valor é null
}

//Por padrão, uma função fazia o return é null
String? funcao2(){

}