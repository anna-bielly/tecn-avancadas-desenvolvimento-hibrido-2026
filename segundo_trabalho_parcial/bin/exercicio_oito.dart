import 'dart:io';

void main() {
  print('CONSUMO MENSAL DE ENERGIA');
  stdout.write('Insira o valor de kWh:');
  double? energia = double.tryParse(stdin.readLineSync()!) ?? 0;

  if (energia <= 100) {
    double valor = energia * 0.80;
    print('Taxa Não Aplicável');
    print('Consumo Mensal: $energia kWh');
    print('Valor Total: R\$$valor');
  } else if (energia >= 101 && energia <= 300) {
    double valor = energia * 1.10;
    print('Taxa Não Aplicável');
    print('Consumo Mensal: $energia kWh');
    print('Valor Total: R\$$valor');
  } else if (energia >= 301 && energia <= 399) {
    double valor = energia * 1.40;
    print('Taxa Não Aplicável');
    print('Consumo Mensal: $energia kWh');
    print('Valor Total: R\$$valor');
  } else if (energia >= 400 && energia <= 500) {
    double valor = energia * 1.40;
    double taxa = valor * 0.10;
    double valor_total = taxa + valor;
    print('Consumo Mensal: $energia kWh');
    print('Valor Sem Taxa: R\$$valor');
    print('Taxa Extra 10%: R\$$taxa');
    print('Valor Total: R\$$valor_total');
  } else if (energia >= 501){
    double valor = energia * 1.80;
    double taxa = valor * 0.10;
    double valor_total = taxa + valor;
    print('Consumo Mensal: $energia kWh');
    print('Valor Sem Taxa: R\$$valor');
    print('Taxa Extra 10%: R\$$taxa');
    print('Valor Total: R\$$valor_total');
  }
}
