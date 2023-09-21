import 'dart:io';

void main() {
    //pede para digitar o primeiro número e converte para double
    stdout.write("Digite o primeiro número: ");
    double num1 = double.parse(stdin.readLineSync()!);

    //pede para escolher a operação a ser feita com os números
    stdout.write("Digite a operação (+, -, *, /): ");
    String operacao = stdin.readLineSync()!;

    //pede para digitar o segundo número e converte para double
    stdout.write("Digite o segundo número: ");
    double num2 = double.parse(stdin.readLineSync()!);

    //guarda o resultado em uma variável, que é calculado em uma função
    double resultado = calcular(num1, num2, operacao);

    //mostra o resultado na tela
    print("O resultado é: $resultado");
}

//função que faz o calculo
double calcular(double num1, double num2, String operacao) {
    if (operacao == "+") {
        return num1 + num2;
    } else if (operacao == "-") {
        return num1 - num2;
    } else if (operacao == "*") {
        return num1 * num2;
    } else if (operacao == "/") {
        //verifica se o segundo número é diferente de 0 para poder dividir
        if (num2 != 0) {
            return num1 / num2;
        } else {
            print("Não é possível dividir por zero!");
            exit(0);
        }
        //mensagem caso o símbolo não for referente a nenhuma operação
    } else {
        print("Operação inválida!");
        exit(0);
    }
}
