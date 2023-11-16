import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//utils
import 'shared/utils/app_theme.dart';
//repository
import 'features/captura_informacoes/repository/captura_repository.dart';
//controller
import 'features/login/controller/login_controller.dart';
import 'features/captura_informacoes/controller/captura_controller.dart';
//view
import 'features/login/view/login_view.dart';
import 'features/captura_informacoes/view/captura_informacoes_view.dart';

class TargetSistemas extends StatelessWidget {
  const TargetSistemas({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginController>(create: (_) => LoginController()),
        Provider<CapturaController>(create: (_) => CapturaController()),
        Provider<CapturaRepository>(create: (_) => CapturaRepository(),)
      ],
      child: MaterialApp(
        title: 'Flutter Teste Target Sistemas',
        theme: AppTheme.theme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Login(),
          '/captura': (context) => CapturaInformacoes(),
        },
      ),
    );
  }
}
