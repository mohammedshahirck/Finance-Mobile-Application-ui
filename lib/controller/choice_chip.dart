import 'package:flutter/material.dart';

class ChoiceModel extends ChangeNotifier {
  String _selectedChoice = '';

  String get selectedChoice => _selectedChoice;

  void selectChoice(String choice) {
    _selectedChoice = choice;
    notifyListeners();
  }
}
