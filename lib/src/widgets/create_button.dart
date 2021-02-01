import 'package:flutter/material.dart';
import 'package:newcalcu/src/model/calculation_view_model.dart';
import 'package:provider/provider.dart';

class CreateButton extends StatelessWidget {
  final String buttonText;
  CreateButton({this.buttonText});
  @override
  Widget build(BuildContext context) {
    final myModel = Provider.of<CalculationViewModel>(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: FlatButton(
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: () {
          myModel.button(buttonText);
          // print(buttonText);
        },
      ),
    );
  }
}
