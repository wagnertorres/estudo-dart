import 'dart:io';

calcularIMC() {
  print("Digite seu peso:");
  double peso = double.parse(stdin.readLineSync()!);

  print("Digite sua altura:");
  double altura = double.parse(stdin.readLineSync()!);

  double imc = equacaoIMC(peso, altura);

  imprimirResultado(imc);
}

double equacaoIMC(double peso, double altura) {
  return peso / (altura * altura);
}

imprimirResultado(double imc) {
  if (imc < 18.5) {
    print("Abaixo do preso!");
  } else if (imc > 18.5 && imc < 24.9) {
    print("Peso Normal");
  } else {
    print("Está acima do peso!");
  }
}
