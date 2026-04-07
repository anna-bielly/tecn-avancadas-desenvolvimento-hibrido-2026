import 'dart:io';

void main() {
  bool nao = false;
  do {
    stdout.write('Deseja continuar?');
    String resposta = stdin.readLineSync()!;

    if (resposta == 'nao' ||
        resposta == 'não' ||
        resposta == 'Nao' ||
        resposta == 'Não') {
      nao = true;
    }
  } while (!nao);
}
