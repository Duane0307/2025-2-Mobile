import 'dart:io';
import 'dart:math';

void main() {
  final rnd = Random();
  final secreto = rnd.nextInt(100) + 1; // 1..100
  int tentativas = 0;
  print('Jogo da Adivinhação! Tente adivinhar um número entre 1 e 100.');

  while (true) {
    print('Digite seu palpite:');
    int palpite = int.parse(stdin.readLineSync()!);
    tentativas++;

    if (palpite == secreto) {
      print('Parabéns! Você acertou em $tentativas tentativas.');
      break;
    } else {
      // operador ternário para a mensagem "Muito alto" ou "Muito baixo"
      String msg = palpite > secreto ? 'Muito alto' : 'Muito baixo';
      print(msg);
    }
  }
}