import 'dart:io';

void main() {
  //Cardapio
  print('\nLanches         | Valor R\$ | Código');
  print('--------------------------------');
  print('Cachorro Quente | R\$14,20  | 101');
  print('Bauru Simples   | R\$12,30  | 102');
  print('Bauru com Ovo   | R\$13,50  | 103');
  print('Hambúrguer      | R\$10,20  | 104');
  print('Cheeseburguer   | R\$15,30  | 105');
  print('Refrigerante    | R\$10,00  | 106');

  //Resto do código
  stdout.write('\nDigite o código do pedido:');
  int? codigo = int.tryParse(stdin.readLineSync()!) ?? 0;

  if (codigo > 106 || codigo < 101) {
    stdout.write('Código inválido!\n');
    return;
  }

  stdout.write('\nDigite a quantidade do pedido:');
  int? quantidade = int.tryParse(stdin.readLineSync()!) ?? 0;

  if (codigo == 101) {
    double valor = quantidade * 14.20;
    print('\nTotal: $valor');
  } else if (codigo == 102) {
    double valor = quantidade * 12.30;
    print('Total: $valor');
  } else if (codigo == 103) {
    double valor = quantidade * 13.50;
    print('Total: $valor');
  } else if (codigo == 104) {
    double valor = quantidade * 10.20;
    print('Total: $valor');
  } else if (codigo == 105) {
    double valor = quantidade * 15.30;
    print('Total: $valor');
  } else if (codigo == 106) {
    double valor = quantidade * 10.00;
    print('Total: $valor');
  }

  }
