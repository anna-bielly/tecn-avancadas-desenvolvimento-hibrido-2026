import 'dart:io';

void main(){
  bool fim = false;
  int nota;
  do{
    stdout.write('Digite uma nota entre 0 e 10:');
    nota = int.tryParse(stdin.readLineSync()!) ?? 0;
    if(nota >= 0 && nota <=10){
      print('\nO valor precisa estar entre 0 e 10!');
      fim = true;
    }
  } while (!fim);
  
  print('\nNota: $nota');
}