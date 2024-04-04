import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class WebviewPage extends StatefulWidget {
  const WebviewPage({Key? key, required this.params}) : super(key: key);
  static const String route = '/webview';
  final WebviewParams params;

  @override
  _WebviewPageState createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwAppBar(
        title: Visibility(
          visible: widget.params.title != null,
          child: OwText(
            '${widget.params.title}'.toUpperCase(),
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(EvaIcons.externalLink),
            onPressed: () {
              launchUrl(Uri.parse(widget.params.url), mode: LaunchMode.externalApplication,);
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: CircularProgressIndicator(),
          ),
          WebViewX(
            initialContent: '${widget.params.url}',
            initialSourceType: SourceType.url,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}

class WebviewParams {
  WebviewParams({
    this.title,
    required this.url,
  });
  String? title;
  String url;
}
