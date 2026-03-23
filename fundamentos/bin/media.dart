import 'dart:io';
// Ponto de Interrogação significa que o usuário pode inserir um valor vazio (opcional)

//tryParse tenta converter e se não conseguir ele joga um valor padrão, ele retorna um double interrogação

//tryParse não aceita coisa opcional, só coisa obrigatória

// A ! significa que eu sei que pode dar problema mas eu to ignorando agora

// ?? significa se não der certo faz isso

void main () {
  stdout.write('Qual o valor da nota da prova?');
  String? valor1 = stdin.readLineSync();
  double? prova = double.tryParse(valor1!) ?? 0.0;

  stdout.write('Qual a nota do trabalho?');
  double? trabalho = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  
  double? media = prova * 0.6 + trabalho * 0.4;

  stdout.write('A sua média é $media\n');
}

// ctrl shift P é o melhor atalho