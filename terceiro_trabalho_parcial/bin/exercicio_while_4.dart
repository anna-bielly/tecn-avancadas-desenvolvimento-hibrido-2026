import 'dart:io';

void main() {
  print('Soma todos os números inteiros até você digitar 0');

  int quantidade = 0;
  int total = 0;
  bool zero = false;
  while (!zero) {
    stdout.write('Digite um número:');
    int numero = int.tryParse(stdin.readLineSync()!) ?? 0;
    if (numero == 0) {
      zero = true;
    }
    total = total + numero;
    quantidade++;
  }
  print('Total: $total');
  print('Quantidade de Números Digitados:$quantidade');
}
