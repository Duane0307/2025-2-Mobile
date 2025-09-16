import 'dart:io';

void main() {
  print('Usuário:');
  String user = stdin.readLineSync()!;

  print('Senha:');
  String pass = stdin.readLineSync()!;

  if (user == 'admin' && pass == '1234') {
    print('Acesso concedido');
  } else {
    print('Acesso negado');
  }
}