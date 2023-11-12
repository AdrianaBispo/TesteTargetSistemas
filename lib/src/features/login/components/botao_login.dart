import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//utils
import '../../../shared/utils/app_theme.dart';
import '../../../shared/utils/app_color.dart';
//controller
import '../controller/login_controller.dart';

class BotaoLogin extends StatefulWidget {
   BotaoLogin({super.key});

  @override
  State<BotaoLogin> createState() => _BotaoLoginState();
}

class _BotaoLoginState extends State<BotaoLogin> {
  late final LoginController controller;
  @override
  void initState() {
    super.initState();
    controller = context.read<LoginController>();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppColor.instance.secondary,
        minimumSize: Size(200, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      onPressed: () {
        controller.validarTudo();
        if(controller.error.temErros == true){
          Navigator.pushNamed(context, '/');
        }
      },
      child: Text(
        'Entrar',
        style: AppTheme.theme.textTheme.titleSmall,
      ),
    );
  }
}
