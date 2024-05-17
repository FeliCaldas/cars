import '../config.dart';

String displayAvaliableCars() {
  var list = [
    for (var entrie in avaliableCars.entries)
      ('Carro: ${entrie.key}, Preço: ${entrie.value.toStringAsFixed(3)}')
  ];
  return list.toString();
}

String displayCarsSold() {
  var list = [
    for (var entrie in cars_sold.entries)
      ('Carro: ${entrie.key}, preço: ${entrie.value}')
  ];
  return list.toString();
}
