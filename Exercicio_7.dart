import 'dart:io';

void main() {
  double saldo = 1000.00;
  bool sair = false;

  while (!sair) {
    print('\nCaixa Eletrônico - Saldo atual: R\$ ${saldo.toStringAsFixed(2)}');
    print('1 - Ver saldo\n2 - Saque\n3 - Depósito\n4 - Sair');
    print('Escolha uma opção:');
    int op = int.parse(stdin.readLineSync()!);

    switch (op) {
      case 1:
        print('Saldo: R\$ ${saldo.toStringAsFixed(2)}');
        break;
      case 2:
        print('Digite o valor do saque:');
        double saque = double.parse(stdin.readLineSync()!);
        if (saque <= 0) {
          print('Valor inválido.');
        } else if (saque > saldo) {
          print('Saldo insuficiente.');
        } else {
          saldo -= saque;
          print('Saque realizado. Saldo: R\$ ${saldo.toStringAsFixed(2)}');
        }
        break;
      case 3:
        print('Digite o valor do depósito:');
        double deposito = double.parse(stdin.readLineSync()!);
        if (deposito <= 0) {
          print('Valor inválido.');
        } else {
          saldo += deposito;
          print('Depósito realizado. Saldo: R\$ ${saldo.toStringAsFixed(2)}');
        }
        break;
      case 4:
        sair = true;
        print('Obrigado. Até mais!');
        break;
      default:
        print('Opção inválida.');
    }
  }
}