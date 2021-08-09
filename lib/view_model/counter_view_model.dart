import 'package:flutter/material.dart';

class CounterViewModel extends ChangeNotifier { // view model berfungsi tempat untuk mengatur logic logic nya
  int _val = 0;
  
  int get val => _val;

  increment () {
    _val++;
    notifyListeners(); // berfungsi untuk me-rebuild valuenya
  }

  decrement () {
    if (_val > 0) {
      _val--;
      notifyListeners();
    }
  }
}