import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
//repository
import '../repository/captura_repository.dart';
//utils
import '../../../shared/utils/app_color.dart';
import '../../../shared/utils/app_theme.dart';
//controller
import '../controller/captura_controller.dart';
//components
import '../../../shared/models/informacoes.dart';
import '../../components/botao_privacidade.dart';
import '../../components/custom_background.dart';
import '../components/lista_informacoes.dart';
import '../components/formulario_informacoes.dart';

class CapturaInformacoes extends StatefulWidget {
  const CapturaInformacoes({super.key});

  @override
  State<CapturaInformacoes> createState() => _CapturaInformacoesState();
}

class _CapturaInformacoesState extends State<CapturaInformacoes> {
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
    return Observer(
      builder: (_) => Scaffold(
        body: SingleChildScrollView(
          child: CustomBackground(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FutureBuilder<List<Informacoes>>(
                          future: controller.ler(),
                          builder: (BuildContext context,
                              AsyncSnapshot<List<Informacoes>> snapshot) {
                            switch (snapshot.connectionState) {
                              case ConnectionState.none:
                              case ConnectionState.waiting:
                                return CircularProgressIndicator(
                                  color: AppColor.instance.primary,
                                );
                              case ConnectionState.active:
                              case ConnectionState.done:
                                if (snapshot.data == null) {
                                  return Text(
                                    'Adcione os seus primeiros registros',
                                    style: AppTheme.theme.textTheme.titleLarge,
                                  );
                                } else if (snapshot.hasError) {
                                  return Text('Erro: ${snapshot.error}',
                                      style:
                                          AppTheme.theme.textTheme.titleLarge);
                                } else {
                                  return ListaInformacoes(
                                      informacoes: snapshot.data!);
                                }
                            }
                          }),
                      FormularioInformacoes(),
                      
                      BotaoPrivacidade(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
