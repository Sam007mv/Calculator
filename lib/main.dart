import 'package:flutter/material.dart';
import 'package:newcalcu/src/model/calculation_view_model.dart';
import 'package:provider/provider.dart';
import 'src/pages/calculator_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculationViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CalculatorView(),
      ),
    );
  }
}
