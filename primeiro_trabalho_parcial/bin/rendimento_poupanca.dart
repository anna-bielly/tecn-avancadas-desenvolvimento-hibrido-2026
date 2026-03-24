import 'dart:io';

//Crie um programa que leia o valor de um depósito em uma conta poupança e
// calcule o valor após um mês de aplicação. Considere um rendimento de 0,5%
//ao mês e mostre o valor final após o rendimento.

void main() {
  stdout.write('Qual o valor depositado?');
  double? valor = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  double? valor_final = (valor * 0.005) + valor;
  stdout.write('Valor após um mês de aplicação: $valor_final\n'); 
}
