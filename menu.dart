import 'dart:io';
import 'calculadora.dart';

class Menu {
  mostraMenu() {
    LoopMenu:while(true) {
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
      print("Digite o primeiro número: ")
      int n1 = int.parse(stdin.readLineSync()!);
      print("Digite o segundo número: ")
      int n2 = int.parse(stdin.readLineSync()!);

      Calculadora calculadora = Calculadora(n1, n2);

      switch (operacao) {
        case '1': {
          calculadora.adicao();
        } break;
        case '2': {
          calculadora.subtracao();
        } break;
        case '3': {
          calculadora.multiplicacao();
        } break;
        case '4': {
          calculadora.divisao();
        } break;
        case '5': {
          calculadora.potencia();
        } break;
        case '6': {} break LoopMenu;
        default:{print('Operação inválida.');}
      }
    }
  }
}