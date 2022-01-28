import 'dart:io';

List<String> produtos = [];

carrinhoCompras() {
  bool condicao = true;

  while (condicao) {
    print("Adicione um produto");
    String produto = stdin.readLineSync()!;

    if (produto.toLowerCase() == 'sair') {
      print("Encerrou a lista de compras!");
      condicao = !condicao;
      print(condicao);
    } else if (produto == "imprimir") {
      imprimir();
    } else if (produto == "remover") {
      remover();
    } else {
      produtos.add(produto);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}

imprimir() {
  for (var i = 0; i < produtos.length; i++) {
    print("Item $i - ${produtos[i]}");
  }
}

remover() {
  print("Remova um produto. Digite um número");
  int item = int.parse(stdin.readLineSync()!);
  produtos.removeAt(item);
  print("Item ${produtos[item]} removido");
  print("Itens remanescentes ${produtos}");
}