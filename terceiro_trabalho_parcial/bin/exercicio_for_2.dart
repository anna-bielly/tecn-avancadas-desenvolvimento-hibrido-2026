import 'dart:io';

void main() {
  stdout.write('Digite um número:');
  int n = int.tryParse(stdin.readLineSync()!) ?? 0;
  if (n == 0) {
    print('O número precisa ser maior que zero!');
  }
  int total = 0;
  for (int i = 1; i <= n; i++) {
    total = total + i;
    print('$total');
  }
  print('Total: $total');
}
