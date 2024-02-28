import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../features/white_label/domain/entity/white_label_entity.dart';
import '../ui/components/widgets/ow_app_bar_widget.dart';
import '../ui/components/widgets/ow_text.dart';

class TermosDeUso extends StatefulWidget {
  @override
  _TermosDeUsoState createState() => _TermosDeUsoState();
}

class _TermosDeUsoState extends State<TermosDeUso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwAppBar(
        title: OwText(
          'Termos de Uso'.toUpperCase(),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: WebUri('${WhiteLabelEntity.current?.setting.link.termsOfUse}'),
        ),
      ),
    );
  }
}
