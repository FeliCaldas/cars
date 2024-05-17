import 'dart:io';

import 'actions/display.dart';
import 'actions/operations.dart';
import 'config.dart';
import 'payaments_metods/credit_payament.dart';
import 'payaments_metods/debit_payament.dart';
import 'payaments_metods/pix_payament.dart';
import 'time_payaments/in_time.dart';

void main() {
  while (true) {
    stdout.write('O que deseja fazer? ${menu}');
    String? opition = stdin.readLineSync();
    if (opition == 'C') {
      print(displayAvaliableCars());
      stdout.write('\nQual carro deseja comprar? ');
      String? desideredCar = stdin.readLineSync();
      stdout.write(typePayament);
      String? opitionPayament = stdin.readLineSync();

      if (opitionPayament == 'C') {
        stdout.write('Em quantas parcelas dejeja fazer? ${timePayament}');
        String? timeOption = stdin.readLineSync();
        if (timeOption == '1') {
          print(creditPayament());
          print(in_time());
        }
      } else if (opitionPayament == 'D' && desideredCar != null) {
        print(debitPayament());
        print(sale(desideredCar));
        print(cars_sold);
      } else if (opitionPayament == 'P' && desideredCar != null) {
        print(pixPayament());
        print(sale(desideredCar));
        print(cars_sold);
      }
    } else if (opition == 'V') {
      stdout.write('Qual carro deseja vender');
      String? car = stdin.readLineSync();
      stdout.write('Qual o valor deste carro?');
      String? entryValue = stdin.readLineSync();
      double value = double.parse(entryValue!);
      print(purchase(car!, value));
      print(displayAvaliableCars());
    } else if (opition == 'S') {
      print('Muito Obrigado!');
      break;
    }
  }
}
