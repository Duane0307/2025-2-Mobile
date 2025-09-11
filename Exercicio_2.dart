import 'dart:io';

void main() {
    stdout.write('Digite o valor da compra: ');
    double valor = double.parse(stdin.readLineSync()!);
        if (valor > 100) {
            double desconto = valor * 0.10;
            double ValorFinal = valor - desconto;
            print ('Valor com desconto: R\$ ${ValorFinal.toStringAsFixed(2)}');
        } else {
            print('Valor sem desconto: R\$ ${valor.toStringAsFixed(2)}');
        }
        }