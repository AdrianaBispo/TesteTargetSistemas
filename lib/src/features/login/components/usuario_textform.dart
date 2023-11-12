import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
//utils
import '../../../shared/utils/app_theme.dart';
//controller
import '../controller/login_controller.dart';
//utils
import '../../../shared/utils/app_color.dart';

class UsuarioTextForm extends StatefulWidget {
  const UsuarioTextForm({Key? key}) : super(key: key);

  @override
  State<UsuarioTextForm> createState() => _UsuarioTextFormState();
}

class _UsuarioTextFormState extends State<UsuarioTextForm> {
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
            'Usuário',
            style: AppTheme.theme.textTheme.titleSmall,
          ),
          SizedBox(height: 10),
          TextFormField(
            cursorColor: AppColor.instance.primary,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                color: AppColor.instance.black,
                size: 18,
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              errorText: controller.error.usuario,
            ),
            onChanged: (value) => controller.validarUsuario(value),
            controller: _textController,
          ),
        ],
      ),
    );
  }
}
