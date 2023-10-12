import 'dart:io';
import 'calculadora.dart';

class Menu {
  mostraMenu() {
    do {
      print('''
      ___________________________
      | Menu:                   |
      | 1. Adição               |
      | 2. Subtração            |
      | 3. Multiplicação        |
      | 4. Divisão              |
      | 5. Potenciação          |
      | 6. Sair                 |
      |_________________________|
      
      Escolha uma operação:
      ''');

      var operacao = stdin.readLineSync();

      if (operacao == '6') {
        print('Encerrando a calculadora');
        break;
      }

      print("Digite o primeiro número: ");
      double n1 = double.parse(stdin.readLineSync()!);
      print("Digite o segundo número: ");
      double n2 = double.parse(stdin.readLineSync()!);

      Calculadora calculadora = Calculadora(n1, n2);

      switch (operacao) {
        case '1':
          calculadora.adicao();
          break;
        case '2':
          calculadora.subtracao();
          break;
        case '3':
          calculadora.multiplicacao();
          break;
        case '4':
          calculadora.divisao();
          break;
        case '5':
          calculadora.potencia();
          break;
        default:
          print('Operação inválida.');
          break;
      }
    } while (true);
  }
}
