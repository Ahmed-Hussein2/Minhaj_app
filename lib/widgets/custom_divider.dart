import 'package:flutter/material.dart';
import 'package:minhaj/constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        circle(),
        Expanded(child: line()),
        circle(),
        Expanded(child: line()),
        circle(),
      ],
    );
  }

  Widget circle() {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
        border: Border.all(color: primaryColor, width: 3),
      ),
    );
  }

  Widget line() {
    return Container(
      height: 2.5,
      color: Colors.teal,
    );
  }
}
