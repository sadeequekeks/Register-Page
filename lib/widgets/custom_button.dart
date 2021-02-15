import 'package:flutter/material.dart';
import 'package:registerPage/screens/country_selection.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CountrySelection(),
          ),
        );
      },
      child: Icon(
        Icons.arrow_right,
        size: 50.0,
        color: Color(0xFFFFFFFF),
      ),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFFF26404),
    );
  }
}
