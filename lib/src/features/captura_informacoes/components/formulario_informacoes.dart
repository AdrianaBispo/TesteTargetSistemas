import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
//controller
import '../controller/captura_controller.dart';
//componentes
import 'texto_textform.dart';

class FormularioInformacoes extends StatefulWidget {
  const FormularioInformacoes({super.key});

  @override
  State<FormularioInformacoes> createState() => _FormularioInformacoesState();
}

class _FormularioInformacoesState extends State<FormularioInformacoes> {
  final _formKey = GlobalKey<FormState>();

  late final CapturaController controller;

  @override
  void initState() {
    super.initState();
    controller = context.read<CapturaController>();
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
          TextoTextForm(),
        ],
      ),
    );
  }
}
