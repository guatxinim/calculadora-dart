class Calculadora {
    double n1;
    double n2;
    String operacao;

    Calculadora(this.n1, this.n2, this.operacao);

    adicao() {
        return n1 + n2;
    }

    subtracao() {
        return n1 - n2;
    }

    multiplicacao() {
        return n1 * n2;
    }
    
    divisao() {
        if (n2 = 0) {
            return "Não é possível dividir por 0. Tente com outro número.";
        } else {
            return n1 / n2;
        }
    }

    potencia() {
        return n1 ** n2;
    }
}