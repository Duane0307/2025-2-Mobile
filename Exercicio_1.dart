import 'dart:io';
void main(){
    stdout.write('Qual a sua idade? ');
    String? input = stdin.readLineSync();

    if(input != null){
        int idade = int.parse(input);
    if(idade > 16){
        print('Pode votar');
    } else {
        print ('Não pode');
    }
    } 

}