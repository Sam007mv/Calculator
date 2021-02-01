import 'package:flutter/material.dart';
import 'package:newcalcu/src/model/calculation_view_model.dart';
import 'package:newcalcu/src/widgets/create_button.dart';
import 'package:provider/provider.dart';

class CalculatorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              padding: EdgeInsets.only(top: 30.0, right: 6.0, left: 6.0),
              alignment: Alignment.topRight,
              child: Text(
                Provider.of<CalculationViewModel>(context).output,
                style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CreateButton(buttonText: '9'),
                CreateButton(buttonText: '8'),
                CreateButton(buttonText: '7'),
                CreateButton(buttonText: '/'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CreateButton(buttonText: '6'),
                CreateButton(buttonText: '5'),
                CreateButton(buttonText: '4'),
                CreateButton(buttonText: 'X'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CreateButton(buttonText: '3'),
                CreateButton(buttonText: '2'),
                CreateButton(buttonText: '1'),
                CreateButton(buttonText: '-'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CreateButton(buttonText: '.'),
                CreateButton(buttonText: '0'),
                CreateButton(buttonText: '='),
                CreateButton(buttonText: '+'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CreateButton(buttonText: 'CLEAR'),
                CreateButton(buttonText: 'DEL'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
