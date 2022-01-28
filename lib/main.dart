import 'package:estudo_dart/src/calculoIMC.dart';
import 'package:estudo_dart/src/calculoIdade.dart';
import 'package:estudo_dart/src/carrinhoCompras.dart';
import 'package:estudo_dart/src/cadastro.dart';

main(List<String> arguments) {
  if (arguments[0] == "calcular-idade") {
    calcularIdade();
  } else if (arguments[0] == "carrinho-compras") {
    carrinhoCompras();
  } else if (arguments[0] == "calcular-imc") {
    calcularIMC();
  } else if (arguments[0] == "cadastrar-pessoa") {
    cadastrarPessoa();
  } else {
    print("Esse programa não existe");
  }
}