import 'dart:io';

void main() {
  //Preço do Produto
  stdout.write('Qual o preço do produto?');
  double? preco = double.tryParse(stdin.readLineSync()!) ?? 0;

  //Código de Origem
  stdout.write(
    '\nCódigo 1: Região Norte\nCódigo 2: Região Sul\nCódigo 3: Região Sudeste\nCódigo 4: Região Nordeste\nCódigo 5: Região Centro-Oeste\n',
  );
  stdout.write('\nQual o código de origem?');
  double? codigo = double.tryParse(stdin.readLineSync()!) ?? 0;

  //Caso o código seja invalido
  if (codigo > 5 || codigo == 0) {
    stdout.write('\nNenhum desconto aplicado, produto importado ou codigo invalido\nPreço final: $preco\n');
  } 
  //Caso o código seja valido
  else if (codigo == 1) {
    double desconto = preco * 0.05;
    double preco_final = preco - desconto;

    stdout.write('\nCódigo 1- Região Norte: 5% de desconto');
    stdout.write(
      '\nO desconto concedido foi de $desconto \nPreço final: $preco_final\n',
    );
  } else if (codigo == 2) {
    double desconto = preco * 0.15;
    double preco_final = preco - desconto;

    stdout.write('\nCódigo 2- Região Sul: 15% de desconto');
    stdout.write('\nO desconto concedido foi de $desconto \nPreço final: $preco_final\n');
  } else if (codigo == 3) {
    double desconto = preco * 0.07;
    double preco_final = preco - desconto;

    stdout.write('\nCódigo 3- Região Sudeste: 7% de desconto');
    stdout.write('\nO desconto concedido foi de $desconto \nPreço final: $preco_final\n');
  } else if (codigo == 4) {
    double desconto = preco * 0.12;
    double preco_final = preco - desconto;

    stdout.write('\nCódigo 4- Região Nordeste: 12% de desconto');
    stdout.write('\nO desconto concedido foi de $desconto\nPreço final: $preco_final\n');
  } else if (codigo == 5) {
    double desconto = preco * 0.20;
    double preco_final = preco - desconto;

    stdout.write('\nCódigo 5- Região Centro-Oeste: 20% de desconto');
    stdout.write('\nO desconto concedido foi de $desconto\nPreço final: $preco_final\n');
  }
}
