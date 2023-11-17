import 'dart:developer';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

// ignore: library_private_types_in_public_api
class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  final FormErrorState error = FormErrorState();

  @observable
  String? usuario = '';

  @observable
  String? senha = '';

  late List<ReactionDisposer> _disposers;

  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }

  void initialState() {
    _disposers = [
      reaction((_) => usuario, validarUsuario),
      reaction((_) => senha, validarSenha),
    ];
  }

  void validarTudo() {
    validarSenha(senha);
    validarUsuario(usuario);
    log(error.usuario.toString());
    log(error.temErros.toString());
  }

  @action
  void validarUsuario(String? value) {
    usuarioComprimento(value);
    usuarioUltimoCaracter(value);
  }

  void usuarioComprimento(String? value) {
    if (value == null || value.isEmpty) {
      error.usuario = 'O campo usuário deve ser preenchido';
    } else if (value.length < 2 && value.length > 20) {
      error.usuario = 'O usuário deve conter entre 2 e 20 caracteres';
    }
  }

  void usuarioUltimoCaracter(String? value) {
    if (value!.endsWith(' '))
      error.usuario = 'O usuário não deve finalizar com espaço';
  }

  @action
  void validarSenha(String? value) {
    senhaComprimento(value);
    senhaUltimoCaracter(value);
    senhaSpecialCharacter(value);
  }

  void senhaComprimento(String? value) {
    if (value == null || value.isEmpty) {
      error.senha = 'O campo senha deve ser preenchido';
    } else if (value.length < 2 && value.length > 20) {
      error.senha = 'A senha deve conter entre 2 e 20 caracteres';
    }
  }

  void senhaUltimoCaracter(String? value) {
    if (value!.endsWith(' '))
      error.senha = 'A senha não deve finalizar com espaço';
  }

  void senhaSpecialCharacter(String? value) {
    if (value!.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]')))
      error.senha = 'A senha não deve conter caracteres especiais';
  }
}

// ignore: library_private_types_in_public_api
class FormErrorState = _FormErrorState with _$FormErrorState;

abstract class _FormErrorState with Store {
  @observable
  String? usuario;

  @observable
  String? senha;

  @computed
  bool get temErros => usuario != null || senha != null;
}
