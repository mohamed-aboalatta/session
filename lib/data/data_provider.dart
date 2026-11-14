import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  final List<String> _dataview = ["BMW", "Ferrari", "Baic", "Mercedes", "MG"];
  final List<String> _dataCart = [];

  List<String> get getDataView => List.unmodifiable(_dataview);
  List<String> get getDataCart => List.unmodifiable(_dataCart);

  void addCar(String car) {
    _dataCart.add(car);
    notifyListeners();
  }

  void removeCar(String car) {
    _dataCart.remove(car);
    notifyListeners();
  }
}
