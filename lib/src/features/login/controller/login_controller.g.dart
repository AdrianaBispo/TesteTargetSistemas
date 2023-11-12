// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginController on _LoginController, Store {
  late final _$usuarioAtom =
      Atom(name: '_LoginController.usuario', context: context);

  @override
  String? get usuario {
    _$usuarioAtom.reportRead();
    return super.usuario;
  }

  @override
  set usuario(String? value) {
    _$usuarioAtom.reportWrite(value, super.usuario, () {
      super.usuario = value;
    });
  }

  late final _$senhaAtom =
      Atom(name: '_LoginController.senha', context: context);

  @override
  String? get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String? value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  late final _$_LoginControllerActionController =
      ActionController(name: '_LoginController', context: context);

  @override
  void validarUsuario(String? value) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.validarUsuario');
    try {
      return super.validarUsuario(value);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validarSenha(String? value) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.validarSenha');
    try {
      return super.validarSenha(value);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
usuario: ${usuario},
senha: ${senha}
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

  late final _$usuarioAtom =
      Atom(name: '_FormErrorState.usuario', context: context);

  @override
  String? get usuario {
    _$usuarioAtom.reportRead();
    return super.usuario;
  }

  @override
  set usuario(String? value) {
    _$usuarioAtom.reportWrite(value, super.usuario, () {
      super.usuario = value;
    });
  }

  late final _$senhaAtom =
      Atom(name: '_FormErrorState.senha', context: context);

  @override
  String? get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String? value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  @override
  String toString() {
    return '''
usuario: ${usuario},
senha: ${senha},
temErros: ${temErros}
    ''';
  }
}
