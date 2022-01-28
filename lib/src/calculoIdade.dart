import 'dart:io';

calcularIdade() {
  print("Digite sua idade:");
  int? idade = int.parse(stdin.readLineSync()!);

  if (idade >= 18) {
    print("é maior de idade ($idade)");
  } else {
    print("menor de idade ($idade)");
  }
}
