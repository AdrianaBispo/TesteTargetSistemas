import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//controller
import '../controller/captura_controller.dart';
//repository
import '../repository/captura_repository.dart';
//controller
import '../../../shared/utils/app_theme.dart';
//models
import '../../../shared/models/informacoes.dart';
//utils
import '../../../shared/utils/app_color.dart';

class ListaInformacoes extends StatefulWidget {
  final List<Informacoes> informacoes;
  ListaInformacoes({super.key, required this.informacoes});

  @override
  State<ListaInformacoes> createState() => _ListaInformacoesState();
}

class _ListaInformacoesState extends State<ListaInformacoes> {
  late final CapturaController controller;

  @override
  void initState() {
    super.initState();
    controller = context.read<CapturaController>();
    controller.repository = context.read<CapturaRepository>();
    controller.initialState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.instance.primary,
      height: 400,
      width: double.infinity,
      child: ListView.builder(
        itemCount: widget.informacoes.length,
        itemBuilder: (context, index) => Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.informacoes[index].texto,
                style: AppTheme.theme.textTheme.titleSmall!
                    .copyWith(color: AppColor.instance.black),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: _editar,
                    icon: Icon(Icons.mode_edit_outline_rounded, size: 24),
                  ),
                  IconButton(
                    onPressed: _deletar,
                    icon: Icon(
                      Icons.cancel,
                      size: 24,
                      color: AppColor.instance.vermelho,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _editar() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Você deseja editar essa informação?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(
                'Editar',
                style: TextStyle(
                  color: AppColor.instance.secondary,
                ),
              ),
              onPressed: () {
                controller.editar(controller.texto);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _deletar() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Você deseja deletar essa informação?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(
                'Deletar',
                style: TextStyle(
                  color: AppColor.instance.vermelho,
                ),
              ),
              onPressed: () {
                controller.deletar();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
