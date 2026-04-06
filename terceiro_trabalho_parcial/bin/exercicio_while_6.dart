import 'dart:io';

void main() {
  print('Para encerrar o programa digite "sair"');

  bool encerrar = false;
  int quantidade = 0;
  while (!encerrar) {
    stdout.write('Digite uma palavra:');
    String palavra = stdin.readLineSync()!;

    if (palavra == 'sair' || palavra == 'Sair') {
      encerrar = true;
      quantidade--;
    }

    quantidade++;
  }
  print('Número de palavras digitadas: $quantidade');
}
