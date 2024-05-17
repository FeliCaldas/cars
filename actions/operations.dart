import '../config.dart';

String sale(String desiredCars) {
  if (avaliableCars.containsKey(desiredCars)) {
    cars_sold[desiredCars] = avaliableCars[desiredCars]!;
    avaliableCars.remove(desiredCars);
    return ('Carro $desiredCars Vendido!');
  } else {
    return 'Carro não Disponível';
  }
}

String purchase(String car, double value) {
  String newCar = car;
  double carValue = value;
  avaliableCars[newCar] = carValue;
  return 'Carro ${newCar} comprado pelo valor de ${carValue.toStringAsFixed(3)}';
}
