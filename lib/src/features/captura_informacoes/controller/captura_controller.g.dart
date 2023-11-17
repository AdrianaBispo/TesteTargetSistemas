// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'captura_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CapturaController on _CapturaController, Store {
  late final _$textoAtom =
      Atom(name: '_CapturaController.texto', context: context);

  @override
  String? get texto {
    _$textoAtom.reportRead();
    return super.texto;
  }

  @override
  set texto(String? value) {
    _$textoAtom.reportWrite(value, super.texto, () {
      super.texto = value;
    });
  }

  late final _$sucessoAtom =
      Atom(name: '_CapturaController.sucesso', context: context);

  @override
  bool get sucesso {
    _$sucessoAtom.reportRead();
    return super.sucesso;
  }

  @override
  set sucesso(bool value) {
    _$sucessoAtom.reportWrite(value, super.sucesso, () {
      super.sucesso = value;
    });
  }

  late final _$listaInformacoesAtom =
      Atom(name: '_CapturaController.listaInformacoes', context: context);

  @override
  List<Informacoes> get listaInformacoes {
    _$listaInformacoesAtom.reportRead();
    return super.listaInformacoes;
  }

  @override
  set listaInformacoes(List<Informacoes> value) {
    _$listaInformacoesAtom.reportWrite(value, super.listaInformacoes, () {
      super.listaInformacoes = value;
    });
  }

  late final _$_CapturaControllerActionController =
      ActionController(name: '_CapturaController', context: context);

  @override
  Future<List<Informacoes>> ler() {
    final _$actionInfo = _$_CapturaControllerActionController.startAction(
        name: '_CapturaController.ler');
    try {
      return super.ler();
    } finally {
      _$_CapturaControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void salvar(String? value) {
    final _$actionInfo = _$_CapturaControllerActionController.startAction(
        name: '_CapturaController.salvar');
    try {
      return super.salvar(value);
    } finally {
      _$_CapturaControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editar(String? value) {
    final _$actionInfo = _$_CapturaControllerActionController.startAction(
        name: '_CapturaController.editar');
    try {
      return super.editar(value);
    } finally {
      _$_CapturaControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deletar() {
    final _$actionInfo = _$_CapturaControllerActionController.startAction(
        name: '_CapturaController.deletar');
    try {
      return super.deletar();
    } finally {
      _$_CapturaControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
texto: ${texto},
sucesso: ${sucesso},
listaInformacoes: ${listaInformacoes}
    ''';
  }
}

mixin _$FormErrorState on _FormErrorState, Store {
  Computed<bool>? _$temErrosComputed;

  @override
  bool get temErros =>
      (_$temErrosComputed ??= Computed<bool>(() => super.temErros,
              name: '_FormErrorState.temErros'))
          .value;

  late final _$textoAtom =
      Atom(name: '_FormErrorState.texto', context: context);

  @override
  String? get texto {
    _$textoAtom.reportRead();
    return super.texto;
  }

  @override
  set texto(String? value) {
    _$textoAtom.reportWrite(value, super.texto, () {
      super.texto = value;
    });
  }

  @override
  String toString() {
    return '''
texto: ${texto},
temErros: ${temErros}
    ''';
  }
}
