import 'package:flutter/material.dart';

abstract class AbstractFormularioPaginado<T> {
  T _dado;
  GlobalKey<FormState> _formulario = new GlobalKey<FormState>();
  List<Widget> _paginas;
  int _paginaAtual = 0;


  GlobalKey<FormState> get formulario => _formulario;

  void inserePagina(Widget widget) {
    if (_paginas == null) _paginas = [];
    _paginas.add(widget);
  }

  void proximaPagina(void Function(AbstractFormularioPaginado<T>) onAvanca) {
    if (_formulario.currentState.validate()) {
      if (!isUltimaPagina) {
        _paginaAtual++;
        onAvanca(this);
      }
    }
  }

  Widget get paginaAtual {
    return _paginas[_paginaAtual];
  }

  bool get isUltimaPagina {
    return _paginas.length - 1 == _paginaAtual;
  }
}
