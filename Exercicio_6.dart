import 'dart:io';

void main() {
  print('Cardápio:\n1 - Prato A (R\$ 25.00)\n2 - Prato B (R\$ 30.00)\n3 - Prato C (R\$ 20.00)\n4 - Prato D (R\$ 40.00)');
  print('\nEscolha uma opção (1-4):');
  int opc = int.parse(stdin.readLineSync()!);

  switch (opc) {
    case 1:
      print('Você escolheu Prato A - Valor: R\$ 25.00');
      break;
    case 2:
      print('Você escolheu Prato B - Valor: R\$ 30.00');
      break;
    case 3:
      print('Você escolheu Prato C - Valor: R\$ 20.00');
      break;
    case 4:
      print('Você escolheu Prato D - Valor: R\$ 40.00');
      break;
    default:
      print('Opção inválida');
  }
}