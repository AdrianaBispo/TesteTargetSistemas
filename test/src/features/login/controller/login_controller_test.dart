import 'package:flutter_test/flutter_test.dart';
import 'package:prova_targetsistemas/src/features/login/controller/login_controller.dart';

void main() {
  group('Verificação da senha', () {
    test(
        'Quando verificar essas credencias'
        'Deve retornar erro sobre a quantidade de caracteres da senha', () {
      final controller = LoginController();
      controller.senha = 's';
      controller.usuario = 'usuario';
      controller.validarTudo();
      expect(controller.error.temErros, true);
      expect(controller.error.senha,
          'A senha deve conter entre 2 e 20 caracteres');
      expect(controller.error.usuario, null);
    });
    test(
        'Quando verificar essas credencias'
        'Deve retornar que a senha está vazia', () {
      final controller = LoginController();
      controller.senha = '';
      controller.usuario = 'usuario';
      controller.validarTudo();
      expect(controller.error.temErros, true);
      expect(controller.error.senha, 'O campo senha deve ser preenchido');
      expect(controller.error.usuario, null);
    });
    test(
        'Quando verificar essas credencias'
        'Deve retornar que a senha possuí espaços no final', () {
      final controller = LoginController();
      controller.senha = 'senha ';
      controller.usuario = 'usuario';
      controller.validarTudo();
      expect(controller.error.temErros, true);
      expect(controller.error.senha, 'A senha não deve finalizar com espaço');
      expect(controller.error.usuario, null);
    });

    test(
        'Quando verificar essas credencias'
        'Deve retornar que a senha possuí caracteres especiais', () {
      final controller = LoginController();
      controller.senha = 'senhas@';
      controller.usuario = 'usuario';
      controller.validarTudo();
      expect(controller.error.temErros, true);
      expect(controller.error.senha,
          'A senha não deve conter caracteres especiais');
      expect(controller.error.usuario, null);
    });
  });

  group('Verificação do usuario', () {
    test(
        'Quando verificar essas credencias'
        'Deve retornar o erro na quantidade de caracteres do usuário', () {
      final controller = LoginController();
      controller.senha = 'senha';
      controller.usuario = 'u';
      controller.validarTudo();
      expect(controller.error.temErros, true);
      expect(controller.error.senha, null);
      expect(controller.error.usuario,
          'O usuário deve conter entre 2 e 20 caracteres');
    });

        test(
        'Quando verificar essas credencias'
        'Deve retornar que o usuário está vazio', () {
      final controller = LoginController();
      controller.senha = 'senha';
      controller.usuario = '';
      controller.validarTudo();
      expect(controller.error.temErros, true);
      expect(controller.error.senha, null);
      expect(controller.error.usuario,
          'O campo usuário deve ser preenchido');
    });
        test(
        'Quando verificar essas credencias'
        'Deve retornar o erro que o usuário possuí espaços no final', () {
      final controller = LoginController();
      controller.senha = 'senha';
      controller.usuario = 'usuario ';
      controller.validarTudo();
      expect(controller.error.temErros, true);
      expect(controller.error.senha, null);
      expect(controller.error.usuario,
          'O usuário não deve finalizar com espaço');
    });
  });

       test(
        'Quando verificar essas credencias'
        'Deve retornar que as credenciais estão corretas', () {
      final controller = LoginController();
      controller.senha = 'senha';
      controller.usuario = 'usuario ';
      controller.validarTudo();
      expect(controller.error.temErros, false);
    });
}
