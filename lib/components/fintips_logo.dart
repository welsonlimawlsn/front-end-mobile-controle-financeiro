import 'package:flutter/material.dart';

class FintipsLogo extends StatelessWidget {
  final double fontSize;

  const FintipsLogo({
    Key key,
    this.fontSize = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'fintips',
      style: TextStyle(
          fontFamily: 'Montserrat',
          color: Theme.of(context).primaryColor,
          fontSize: fontSize),
      textAlign: TextAlign.center,
    );
  }
}
