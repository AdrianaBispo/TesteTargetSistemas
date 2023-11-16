import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
//controller
import '../controller/captura_controller.dart';
//utils
import '../../../shared/utils/app_color.dart';

class TextoTextForm extends StatefulWidget {
  const TextoTextForm({Key? key}) : super(key: key);

  @override
  State<TextoTextForm> createState() => _TextoTextFormState();
}

class _TextoTextFormState extends State<TextoTextForm> {
  final _textController = TextEditingController();

  late final CapturaController controller;

  @override
  void initState() {
    super.initState();
    controller = context.read<CapturaController>();
    _textController.text = '';
  }

  @override
  void dispose() {
    controller.dispose();
    _textController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            autofocus: true,
            textAlign: TextAlign.center,
            cursorColor: AppColor.instance.secondary,
            decoration: InputDecoration(
              hintStyle: TextStyle(fontWeight: FontWeight.bold),
              hintText: 'Digite seu texto',
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              errorText: controller.error.texto,
            ),
            onChanged:(value) => controller.texto = value,
            onFieldSubmitted: (value) => controller.salvar(value),
            controller: _textController,
          ),
        ],
      ),
    );
  }
}
