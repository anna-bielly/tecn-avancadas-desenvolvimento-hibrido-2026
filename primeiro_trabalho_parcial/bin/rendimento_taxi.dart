import 'dart:io';

//Escreva um programa que ajude um motorista de táxi a calcular o rendimento do
//seu carro no dia. O programa deve ler as seguintes informações: a marcação do
//hodômetro no início e no final do dia, o número de litros de combustível consumidos
//e o valor total recebido dos passageiros. Com esses dados, calcule a média de
//consumo de combustível (em Km/L) e o lucro líquido do dia, considerando que o preço
//do combustível é R$ 6,50 por litro.

void main() {
  //Calcular a Distância percorrida
  stdout.write('Qual a marcação do hodômetro no ínicio do dia?');
  double? hodometro_inicio = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  stdout.write('Qual a marcação do hodômetro no fim do dia?');
  double? hodometro_fim = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  double? distancia_percorrida = hodometro_fim - hodometro_inicio;

  //Valor de combustivel gasto
  stdout.write('Quantos litros de combustivel foi gasto?');
  double? litros = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  double? gasto_combustivel = litros * 6.50;

  //Valor recebido dos passageiros
  stdout.write('Qual o valor total recebido dos passageiros?');
  double valor_recebido = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  //Media de combustivel gasto
  double media_km_litro = distancia_percorrida / litros;

  //Lucro liquido
  double lucro_liquido = valor_recebido - gasto_combustivel;

  //Exiições
  stdout.write('A média de Km/L é: $media_km_litro\nE o lucro líquido é: $lucro_liquido\n');
}
