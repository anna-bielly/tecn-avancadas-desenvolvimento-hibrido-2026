import 'dart:io';

void main() {
  print('Menu de Operções');

  bool fim = false;
  do {
    print('\n1- Somar');
    print('2- Subtrair');
    print('0 - Sair');

    stdout.write('\nEscolha:');
    int opcao = int.tryParse(stdin.readLineSync()!) ?? 0;

    if (opcao == 1) {
      stdout.write('Digite o 1º valor:');
      double valor1 = double.tryParse(stdin.readLineSync()!) ?? 0;
      stdout.write('Digite o 2º valor:');
      double valor2 = double.tryParse(stdin.readLineSync()!) ?? 0;
      double total = valor1 + valor2;
      print('Total: $total');
      continue;
    }
    if (opcao == 2) {
      stdout.write('Digite o 1º valor:');
      double valor1 = double.tryParse(stdin.readLineSync()!) ?? 0;
      stdout.write('Digite o 2º valor:');
      double valor2 = double.tryParse(stdin.readLineSync()!) ?? 0;
      double total = valor1 - valor2;
      print('Total: $total');
      continue;
    } else {
      fim = true;
    }
  } while (!fim);
}
