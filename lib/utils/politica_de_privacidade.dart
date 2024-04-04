import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

import '../features/white_label/domain/entity/white_label_entity.dart';
import '../ui/components/widgets/ow_app_bar_widget.dart';
import '../ui/components/widgets/ow_text.dart';

class PoliticaDePrivacidade extends StatefulWidget {
  @override
  _PoliticaDePrivacidadeState createState() => _PoliticaDePrivacidadeState();
}

class _PoliticaDePrivacidadeState extends State<PoliticaDePrivacidade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwAppBar(
        title: OwText('Política de Privacidade'.toUpperCase()),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Center(
            child: CircularProgressIndicator(),
          ),
          WebViewX(
            initialContent: '${WhiteLabelEntity.current?.setting.link.privacyPolicy}',
            initialSourceType: SourceType.url,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
