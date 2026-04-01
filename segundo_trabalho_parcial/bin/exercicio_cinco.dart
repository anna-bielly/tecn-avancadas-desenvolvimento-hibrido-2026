import 'dart:io';

void main() {
  print('CALCULO DE IMPOSTO COM BASE NO SALÁRIO MENSAL\n');
  stdout.write('Qual seu sálario?');
  double? salario = double.tryParse(stdin.readLineSync()!) ?? 0;

  if (salario <= 2000.00) {
    print('Insento de impostos');
    print('Salário bruto: R\$$salario');
    print('Valor do Imposto: R\$0,00');
    print('Salário líquido: R\$$salario');
  } else if (salario > 2000.00 && salario < 5000.00) {
    double imposto = salario * 0.10;
    double salario_liquido = salario - imposto;

    print('10% de imposto');
    print('Salário bruto: R\$$salario');
    print('Valor do Imposto: R\$$imposto');
    print('Salário líquido: R\$$salario_liquido');
  } else if (salario > 5000.01 && salario < 10000.00) {
    double imposto = salario * 0.15;
    double salario_liquido = salario - imposto;

    print('15% de imposto');
    print('Salário bruto: R\$$salario');
    print('Valor do Imposto: R\$$imposto');
    print('Salário líquido: R\$$salario_liquido');
  } else if (salario > 10000.01){
    double imposto = salario * 0.20;
    double salario_liquido = salario - imposto;

    print('20% de imposto');
    print('Salário bruto: R\$$salario');
    print('Valor do Imposto: R\$$imposto');
    print('Salário líquido: R\$$salario_liquido');
  }
}
