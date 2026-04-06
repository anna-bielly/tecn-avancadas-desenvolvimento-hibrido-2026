import 'dart:io';

void main() {
  print('Para encerrar o programa digite 0');

  int impar = 0;
  int par = 0;
  bool zero = false;
  while (!zero) {
    stdout.write('Digite um número:');
    int numero = int.tryParse(stdin.readLineSync()!) ?? 0;
    if (numero == 0) {
      zero = true;
    } else if (numero % 2 == 0) {
      par++;
    } else if (numero % 2 != 0) {
      impar++;
    }
  }
  print('Total de números Pares: $par');
  print('Total de números Ímpares:$impar');
}
