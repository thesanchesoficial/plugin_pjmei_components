import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

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
        title: OwText(
          'Política de Privacidade'.toUpperCase(),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: WebUri('${WhiteLabelEntity.current?.setting.link.privacyPolicy}'),
        ),
      ),
    );
  }
}
