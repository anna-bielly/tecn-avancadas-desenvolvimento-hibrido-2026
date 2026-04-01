import 'dart:io';

void main() {
  print(
    'O estado deve ser digitado corretamente\nEx: Acre (com a primeira maiuscula e o resto minusculo)',
  );
  stdout.write('\nDigite o nome do estado:');
  String? estado = stdin.readLineSync();

  if (estado == null || estado.isEmpty) {
    return;
  } else if (estado == 'Acre' ||
      estado == 'Amápa' ||
      estado == 'Amapa' ||
      estado == 'Amazonas' ||
      estado == 'Pará' ||
      estado == 'Para' ||
      estado == 'Rondônia' ||
      estado == 'Rondonia' ||
      estado == 'Roraima' ||
      estado == 'Tocantins') {
    String regiao = 'Norte';
    print('O estado $estado pertence a região $regiao');
  } else if (estado == 'Alagoas' ||
      estado == 'Bahia' ||
      estado == 'Ceará' ||
      estado == 'Ceara' ||
      estado == 'Maranhão' ||
      estado == 'Maranhao' ||
      estado == 'Paraíba' ||
      estado == 'Paraiba' ||
      estado == 'Pernambuco' ||
      estado == 'Piauí' ||
      estado == 'Piaui' ||
      estado == 'Rio Grande do Norte' ||
      estado == 'Sergipe') {
    String regiao = 'Nordeste';
    print('O estado $estado pertence a região $regiao');
  } else if (estado == 'Goiás' ||
      estado == 'Goias' ||
      estado == 'Mato Grosso' ||
      estado == 'Mato Grosso do Sul' ||
      estado == 'Distrito Federal') {
    String regiao = 'Centro-Oeste';
    print('O estado $estado pertence a região $regiao');
  } else if (estado == 'Espírito Santo' ||
      estado == 'Espirito Santo' ||
      estado == 'Minas Gerais' ||
      estado == 'Rio de Janeiro' ||
      estado == 'São Paulo' ||
      estado == 'Sao Paulo') {
    String regiao = 'Sudeste';
    print('O estado $estado pertence a região $regiao');
  } else if (estado == 'Paraná' ||
      estado == 'Parana' ||
      estado == 'Rio Grande do Sul' ||
      estado == 'Santa Catarina') {
    String regiao = 'Sul';
    print('O estado $estado pertence a região $regiao');
  } else {
    stdout.write('\nEstado digitado incorretamente ou não existe\n');
  }
}
