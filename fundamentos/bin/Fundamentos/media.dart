import 'dart:io';
// Ponto de Interrogação significa que o usuário pode inserir um valor vazio (opcional)

//tryParse tenta converter e se não conseguir ele joga um valor padrão, ele retorna um double interrogação

//tryParse não aceita coisa opcional, só coisa obrigatória

// A ! significa que eu sei que pode dar problema mas eu to ignorando agora

// ?? significa se não der certo faz isso

void main () {
  //Pergunta qual a nota
  stdout.write('Qual a nota da prova?');
  //Lê a nota
  String? valor1 = stdin.readLineSync();
  //Transforma a nota em double
  double? prova = double.tryParse(valor1!) ?? 0.0;

  stdout.write('Qual a nota do trabalho?');
  //Lê e converte a nota para double
  double? trabalho = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  //Faz o calculo
  double? media = prova * 0.6 + trabalho * 0.4;

  stdout.write('A sua média é $media\n');
}

// ctrl shift P é o melhor atalho
