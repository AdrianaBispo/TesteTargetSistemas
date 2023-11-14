import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
//utils
import '../../../shared/utils/app_theme.dart';
//controller
import '../controller/login_controller.dart';
//utils
import '../../../shared/utils/app_color.dart';

class SenhaTextForm extends StatefulWidget {
  const SenhaTextForm({Key? key}) : super(key: key);

  @override
  State<SenhaTextForm> createState() => _SenhaTextFormState();
}

class _SenhaTextFormState extends State<SenhaTextForm> {
  final _textController = TextEditingController();

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
    return Observer(
      builder: (_) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Senha',
            style: AppTheme.theme.textTheme.titleSmall,
          ),
          SizedBox(height: 10),
          TextFormField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            cursorColor: AppColor.instance.primary,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
                color: AppColor.instance.black,
                size: 18,
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              errorText: controller.error.senha,
            ),
            onChanged: (value) => controller.validarSenha(value),
            controller: _textController,
          ),
        ],
      ),
    );
  }
}
