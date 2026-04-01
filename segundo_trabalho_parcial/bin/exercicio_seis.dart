import 'dart:io';

void main() {

    print('\nCARDÁPIO');
    print('| Lanches     | Bebidas    |');
    print('| Bauru: 1    | Guaraná: 1 |');
    print('| X-Frango: 2 | Água: 2    |');
    print('| Pizza: 3    | Vinho: 3   |');

  bool valido = false;

  while (!valido) {
      stdout.write('Código do lanche:');
    int lanche = int.tryParse(stdin.readLineSync()!) ?? 0;
    if (lanche == 0) {
      print('Código Inválido!');
      continue;
    }
    stdout.write('Código da bebida:');
    int bebida = int.tryParse(stdin.readLineSync()!) ?? 0;
    if (bebida == 0) {
      print('Código Inválido!');
      continue;
    }
    if (lanche == 1 && bebida == 1) {
      print('O lanche Bauru não pode ser acompanhado de Guaraná');
      continue;
    } else if (lanche == 2 && bebida == 2) {
      print('O lanche X-Frango, não pode ser acompanhado de Água');
      continue;
    } else if (lanche == 3 && bebida == 1){
      print('O lanche Pizza, não pode ser acompanhado de Guaraná');
      continue;
    } else {
      print('Pedido realizado com sucesso!');
      valido = true;
    }
  }
}
