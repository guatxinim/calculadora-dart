import 'dart:io';
import 'calculadora.dart';

class Menu {
  void show() {
    print('Escolha uma operação:');
    print('1. Adição');
    print('2. Subtração');
    print('3. Multiplicação');
    print('4. Divisão');
    print('5. Potenciação');
  }

  String? getInput() {
    var opcao = stdin.readLineSync();
    return opcao;
  }

  void execute(String operacao) {
    switch (operacao) {
      case '1':
        void adicao() {
          print("operação em andamento");
        }

        void main() {
          var minhaInstancia = Calculadora();
          minhaInstancia.adicao();
        }

        break;
      case '2':
        // Executar operação de subtração
        break;
      case '3':
        // Executar operação de multiplicação
        break;
      case '4':
        // Executar operação de divisão
        break;
      default:
        print('Operação inválida.');
    }
  }
}
