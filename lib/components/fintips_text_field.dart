import 'package:fintips_front_end/validators/validator.dart';
import 'package:flutter/material.dart';

class FintipsTextField extends StatelessWidget {
  final String label;
  final bool password;
  final TextInputType keyboardType;
  final bool autofocus;
  final FocusNode focusNode;
  final void Function(String) onFieldSubmitted;
  final TextEditingController controller;
  final List<Validator> validators;

  const FintipsTextField({
    Key key,
    this.label,
    this.password = false,
    this.keyboardType,
    this.autofocus = false,
    this.focusNode,
    this.onFieldSubmitted,
    this.controller,
    this.validators,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderInput = UnderlineInputBorder(
        borderSide:
            BorderSide(width: 2, color: Theme.of(context).primaryColor));
    return TextFormField(
        controller: controller,
        focusNode: focusNode,
        autofocus: autofocus,
        obscureText: password,
        style: Theme.of(context).textTheme.body1,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(fontSize: 20),
            focusedBorder: borderInput,
            enabledBorder: borderInput,
            errorBorder: borderInput.copyWith(
              borderSide: borderInput.borderSide.copyWith(
                color: Color.fromRGBO(194, 20, 9, 1),
              ),
            ),
            contentPadding: EdgeInsets.all(20)),
        keyboardType: keyboardType,
        validator: (value) {
          if (validators != null)
            for (Validator validator in validators) {
              if (!validator.validate(value)) return validator.errorMessage;
            }
          return null;
        },
        textInputAction: onFieldSubmitted == null
            ? TextInputAction.next
            : TextInputAction.done,
        onFieldSubmitted: onFieldSubmitted ??
            (term) {
              FocusScope.of(context).nextFocus();
            });
  }
}
