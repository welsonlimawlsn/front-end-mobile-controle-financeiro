import 'package:fintips_front_end/components/fintips_logo.dart';
import 'package:fintips_front_end/components/fintips_text_field.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: FintipsLogo(
                  fontSize: 48,
                ),
              ),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'welson teles',
                  style: Theme.of(context).textTheme.subhead,
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: FintipsLogo(),
        iconTheme: new IconThemeData(color: Color.fromRGBO(129, 129, 129, 1)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (ctx) {
                    return SimpleDialog(
                      title: Text('nova despesa'),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                FintipsTextField(
                                  label: 'descrição',
                                  autofocus: true,
                                ),
                                FintipsTextField(
                                  label: 'categoria',
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  });
            },
            color: Color.fromRGBO(194, 20, 9, 1),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
            color: Color.fromRGBO(9, 194, 72, 1),
          )
        ],
      ),
    );
  }
}
