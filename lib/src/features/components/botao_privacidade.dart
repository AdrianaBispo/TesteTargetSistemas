import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//utils
import '../../shared/utils/app_theme.dart';

class BotaoPrivacidade extends StatelessWidget {
  const BotaoPrivacidade({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(),
      onPressed: () async {
        final Uri _url = Uri.parse('https://google.com.br');
        if (!await launchUrl(_url)) {
          throw Exception('Could not launch $_url');
        }
      },
      child: Text(
        'Política de privacidade',
        style: AppTheme.theme.textTheme.titleSmall,
      ),
    );
  }
}
