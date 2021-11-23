import 'funcoes/retornos_de_func_nulable.dart';

var a = 10;
void main() {
  a = 5;
  void funcao(int b) {
    a = 8;
    b = 21;
    print(a + b);
    void funcao2(int c) {
      print(a + c);
    }

    funcao2(2);
  }

  //funcao2(2); fora de escopo
  funcao(2);
  // b = 12; fora do escopo
}
