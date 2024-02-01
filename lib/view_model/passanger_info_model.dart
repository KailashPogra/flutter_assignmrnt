import 'package:flutter/material.dart';

class PassangerInfoModel extends ChangeNotifier {
  // radio box logic
  // Private variable to store the string
  String _radioButton = "my self";
  // Getter to retrieve the string
  String get radioButton => _radioButton;
  // notify listener
  void radioLisner(String value) {
    _radioButton = value;
    notifyListeners();
  }

  // checkbox logic
  bool _gstCheckBox = false;
  bool get gstCheckBox => _gstCheckBox;
  // notify listener
  void gstCheckBoxListener(bool value) {
    _gstCheckBox = value;
    notifyListeners();
  }

  bool _flightCheckBox = false;
  bool get flightCheckBox => _flightCheckBox;
  // notify listener
  void flightCheckBoxLisner(bool value) {
    _flightCheckBox = value;
    notifyListeners();
  }
}
