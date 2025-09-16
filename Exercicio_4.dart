import 'dart:io';

void main() {
  print('Digite a primeira nota:');
  double n1 = double.parse(stdin.readLineSync()!);

  print('Digite a segunda nota:');
  double n2 = double.parse(stdin.readLineSync()!);

  double media = (n1 + n2) / 2;
  print('\nMédia: ${media.toStringAsFixed(2)}');

  if (media >= 7) {
    print('Resultado: Aprovado');
  } else if (media >= 4) {
    print('Resultado: Recuperação');
  } else {
    print('Resultado: Reprovado');
  }
}