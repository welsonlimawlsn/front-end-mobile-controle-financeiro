import 'package:flutter/material.dart';

class FintipsTextWithButton extends StatelessWidget {
  final void Function() onPressed;
  final String textLabel;
  final String textButton;

  const FintipsTextWithButton({
    Key key,
    this.onPressed,
    this.textLabel,
    this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          textLabel,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Text(
              textButton,
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
