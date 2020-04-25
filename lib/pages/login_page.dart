import 'package:fintips_front_end/app_routes.dart';
import 'package:fintips_front_end/components/fintips_logo.dart';
import 'package:fintips_front_end/components/fintips_raised_button.dart';
import 'package:fintips_front_end/components/fintips_text_field.dart';
import 'package:fintips_front_end/components/fintips_text_with_button.dart';
import 'package:fintips_front_end/validators/email_validator.dart';
import 'package:fintips_front_end/validators/not_empty_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FintipsLogo(fontSize: 64),
              FintipsTextField(
                label: 'e-mail',
                keyboardType: TextInputType.emailAddress,
                validators: [NotEmptyValidator(), EmailValidator()],
              ),
              SizedBox(
                height: 10,
              ),
              FintipsTextField(
                label: 'senha',
                password: true,
                keyboardType: TextInputType.visiblePassword,
                onFieldSubmitted: (_) => _submitForm(),
                validators: [NotEmptyValidator()],
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(vertical: 15),
                child: FlatButton(
                  splashColor: Colors.transparent,
                  onPressed: () {},
                  child: Text(
                    'esqueceu a senha?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  highlightColor: Colors.transparent,
                  padding: EdgeInsets.all(0),
                ),
              ),
              FintipsRaisedButton(
                label: 'entrar',
                onPressed: _submitForm,
              ),
              SizedBox(
                height: 30,
              ),
              FintipsTextWithButton(
                textButton: 'crie aqui',
                textLabel: 'ainda não possui uma conta?',
                onPressed: () => _telaCadastro(context),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (formKey.currentState.validate()) {
      print('Form valido');
    } else {
      print('invalido');
    }
  }

  _telaCadastro(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.CADASTRO);
  }
}
