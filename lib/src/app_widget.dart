import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//utils
import 'shared/utils/app_theme.dart';
//controller
import 'features/login/controller/login_controller.dart';
//view
import 'features/login/view/login_view.dart';

class TargetSistemas extends StatelessWidget {
  const TargetSistemas({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginController>(create: (_) => LoginController()),
      ],
      child: MaterialApp(
        title: 'Flutter Teste Target Sistemas',
        theme: AppTheme.theme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Login(),
        },
      ),
    );
  }
}
