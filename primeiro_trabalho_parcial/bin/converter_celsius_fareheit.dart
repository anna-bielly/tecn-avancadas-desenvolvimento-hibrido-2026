import 'dart:io';

//Desenvolva um programa que leia uma temperatura em graus Celsius
//e converta para Fahrenheit. O programa deve mostrar o resultado ao usuário.

void main() {
  print('Se o valor digitado for invalido, o sistema ira reconhecer como 0 automaticamente');
  stdout.write('Escreva a temperatura em graus Celsius:');
  double? celsius = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  double? fahrenheit = celsius * 1.8 + 32;
  stdout.write(
    '$celsius graus celsius é igual a $fahrenheit graus fahrenheit\n',
  );
}
