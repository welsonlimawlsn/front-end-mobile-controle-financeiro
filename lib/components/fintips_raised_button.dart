import 'package:flutter/material.dart';

class FintipsRaisedButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;

  const FintipsRaisedButton({
    Key key,
    this.label,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),
      ),
      elevation: 0,
      padding: EdgeInsets.all(20),
      color: Theme.of(context).primaryColor,
      highlightElevation: 0,
    );
  }
}
