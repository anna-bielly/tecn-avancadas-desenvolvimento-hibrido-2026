import 'dart:io';

void main() {

  stdout.write('Digite o valor em Metros:');
  String? metros = stdin.readLineSync();
  double? valor = double.tryParse(metros!) ?? 0.0;

  double? centimetros = valor * 100;

  stdout.write('$valor é igual a $centimetros centímetros\n');

}