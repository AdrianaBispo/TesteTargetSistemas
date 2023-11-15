import 'package:flutter/material.dart';
//componentes
import '../components/formulario_login.dart';
import '../../components/custom_background.dart';
import '../../components/botao_privacidade.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: CustomBackground(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                height: MediaQuery.of(context).size.height * .7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FormularioLogin(),
                    BotaoPrivacidade(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
