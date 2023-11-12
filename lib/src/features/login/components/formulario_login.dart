import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
//controller
import '../controller/login_controller.dart';
//componentes
import 'usuario_textform.dart';
import 'senha_textform.dart';
import 'botao_login.dart';

class FormularioLogin extends StatefulWidget {
  const FormularioLogin({super.key});

  @override
  State<FormularioLogin> createState() => _FormularioLoginState();
}

class _FormularioLoginState extends State<FormularioLogin> {
  final _formKey = GlobalKey<FormState>();

  late final LoginController controller;

  @override
  void initState() {
    super.initState();
    controller = context.read<LoginController>();
    controller.initialState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          UsuarioTextForm(),
          SizedBox(height: 30),
          SenhaTextForm(),
          SizedBox(height: 30),
          BotaoLogin(),
        ],
      ),
    );
  }
}
