import 'package:fintips_front_end/app_routes.dart';
import 'package:fintips_front_end/pages/cadastro_page.dart';
import 'package:fintips_front_end/pages/inicio_page.dart';
import 'package:fintips_front_end/pages/login_page.dart';
import 'package:flutter/material.dart';

main() => runApp(FintipsApp());

class FintipsApp extends StatelessWidget {
  static const corDestaque = Color.fromRGBO(9, 194, 194, 1);
  static const corPadraoFonte = Color.fromRGBO(129, 129, 129, 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: corDestaque,
        accentColor: corDestaque,
        cursorColor: corDestaque,
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          body1: TextStyle(
            fontSize: 20,
            color: corPadraoFonte,
            fontWeight: FontWeight.w300
          ),
          title: TextStyle(
            color: corPadraoFonte,
            fontSize: 30,
            fontWeight: FontWeight.w300
          ),
          subhead: TextStyle(
              color: corPadraoFonte,
              fontSize: 24,
              fontWeight: FontWeight.w300
          )
        ),
      ),
      initialRoute: '/login',
      routes: {
        AppRoutes.INICIO: (ctx) => InicioPage(),
        AppRoutes.LOGIN: (ctx) => LoginPage(),
        AppRoutes.CADASTRO: (ctx) => CadastroPage()
      },
    );
  }
}
