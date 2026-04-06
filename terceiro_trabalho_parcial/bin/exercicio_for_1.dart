import 'dart:io';

void main() {
  stdout.write('Digite um número:');
  int n = int.tryParse(stdin.readLineSync()!) ?? 0;
  if (n == 0) {
    print('Digite um número maior que zero!');
    return;
  }
  for (var i = n; i >= 0; i--) {
    print('$i');
  }
  print('Fim da Sequência');
}
