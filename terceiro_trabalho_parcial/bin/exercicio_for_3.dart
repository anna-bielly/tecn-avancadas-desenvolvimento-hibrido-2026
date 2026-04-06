import 'dart:io';

void main() {
  stdout.write('Digite o primeiro número:');
  int n = int.tryParse(stdin.readLineSync()!) ?? 0;

  stdout.write('\nDigite o segundo número:');
  int k = int.tryParse(stdin.readLineSync()!) ?? 0;

  if (n == 0 || k == 0) {
    print('Nenhum dos números podem ser 0');
    return;
  }

int total = 0;
  for (int i = 1; i <= n; i++) {
    if (i % k == 0) {
      total++;
    }
  }
  print('Quantidade de múltiplos: $total');
}
