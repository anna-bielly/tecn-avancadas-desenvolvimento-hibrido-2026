import 'dart:io';

//Escreva um programa que leia o valor que um funcionário recebe por hora e o
//número de horas trabalhadas no mês. Calcule e exiba o total do salário
//mensal do funcionário.

void main() {
  stdout.write('Qual o valor pago por hora trabalhada?');
  double? valor_hora = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  stdout.write('Quantas horas o funcionário trabalhou no mês?');
  double? horas_trabalhadas = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  double? salario = valor_hora * horas_trabalhadas;
  stdout.write('O salário mensal do funcionário é: $salario\n');
}
