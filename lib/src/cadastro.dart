import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

cadastrarPessoa() {
  bool condicao = true;
  print("\x1B[2J\x1B[0;0H");

  while (condicao) {
    print("Digite um comando (cadastrar | imprimir | sair)");
    String comando = stdin.readLineSync()!;

    if (comando == "sair") {
      print("Programa encerrado!");
      condicao = !condicao;
    } else if (comando == "cadastrar") {
      print("\x1B[2J\x1B[0;0H");
      cadastrar();
    } else if (comando == "imprimir") {
      print(cadastros);
    } else {
      print("Comando inexistente");
    }
  }
}

cadastrar() {
    Map<String, dynamic> cadastro = {};
  
    print("=== Digite o seu nome:");
    cadastro["nome"] = stdin.readLineSync();

    print("=== Digite o seu idade:");
    cadastro["idade"] = stdin.readLineSync();

    print("=== Digite o seu cidade:");
    cadastro["cidade"] = stdin.readLineSync();

    print("=== Digite o seu Estado:");
    cadastro["estado"] = stdin.readLineSync();

    cadastros.add(cadastro);
}
