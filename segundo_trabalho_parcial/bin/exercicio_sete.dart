import 'dart:io';

void main() {
  print('BOMBA DE COMBUSTÍVEL');
  print('| Combustível      | Preço           | Código');
  print('| Gasolina Comum   | R\$6,50 p/Litro | 1');
  print('| Gasolina Premium | R\$7,80 p/Litro | 2');
  print('| Diesel           | R\$5,90 p/Litro | 3');
  print('| Álcool           | R\$4,20 p/Litro | 4');

  bool fim = false;
  while (!fim) {
    stdout.write('Qual o código?');
    int codigo = int.tryParse(stdin.readLineSync()!) ?? 0;
    if (codigo == 0 || codigo > 4) {
      print('Combustível Inválido!');
      continue;
    }

    stdout.write('Quantos litros deseja colocar?\n');
    double litros = double.tryParse(stdin.readLineSync()!) ?? 0;

    if (codigo == 1) {
      print('Combustível escolhido: Gasolina Comum');
      print('Quantidade de Litros: $litros');
      print('Preço Unitário: R\$6,50');
      double valor = litros * 6.50;
      print('Valor Total: R\$$valor');
      fim = true;
    } else if (codigo == 2) {
      print('Combustível escolhido: Gasolina Premium');
      print('Quantidade de Litros: $litros');
      print('Preço Unitário: R\$7,80');
      double valor = litros * 7.80;
      print('Valor Total: R\$$valor');
      fim = true;
    } else if (codigo == 3){
      print('Combustível escolhido: Diesel');
      print('Quantidade de Litros: $litros');
      print('Preço Unitário: R\$5,90');
      double valor = litros * 5.90;
      print('Valor Total: R\$$valor');
      fim = true;
    } else if (codigo == 4){
      print('Combustível escolhido: Álcool');
      print('Quantidade de Litros: $litros');
      print('Preço Unitário: R\$4,20');
      double valor = litros * 4.20;
      print('Valor Total: R\$$valor');
      fim = true;
    }
  }
}
