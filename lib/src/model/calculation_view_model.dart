import 'package:flutter/foundation.dart';

class CalculationViewModel extends ChangeNotifier {
  String output = '';
  String buttonText;

  double getResult(String input) {
    String num1 = '';
    String num2 = '';
    String op = '';
    for (int i = 0; i < input.length; i++) {
      if (int.tryParse(input[i]) != null || input[i] == '.') {
        num1 = num1 + input[i];
      } else {
        op = input[i];
        break;
      }
    }
    for (int j = num1.length + 1; j < input.length; j++) {
      num2 = num2 + input[j];
    }

    switch (op) {
      case '':
        return double.parse(num1);
        break;
      case '+':
        return double.parse(num1) + double.parse(num2);
        break;
      case '-':
        return double.parse(num1) - double.parse(num2);
        break;
      case '/':
        return double.parse(num1) / double.parse(num2).toInt();
        break;
      case 'X':
        return double.parse(num1) * double.parse(num2);
        break;
    }
  }

  void button(buttonText) {
    if (buttonText != 'CLEAR' && buttonText != '=' && buttonText != 'DEL') {
      if (buttonText == '+' ||
          buttonText == '-' ||
          buttonText == '/' ||
          buttonText == 'X') {
        output = getResult(output).toString();
        notifyListeners();
      }
      output = output + buttonText;
      notifyListeners();
    } else if (buttonText == '=') {
      output = getResult(output).toString();
      notifyListeners();
    } else if (buttonText == 'DEL') {
      output = output.substring(0, output.length - 1);
      notifyListeners();
    } else {
      output = '';
      notifyListeners();
    }
  }
}
