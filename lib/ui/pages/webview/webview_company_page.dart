import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:pjmei_white_label_dependencies/pjmei_white_label_dependencies.dart';

class WebviewPage extends StatefulWidget {
  const WebviewPage({Key? key, required this.params}) : super(key: key);
  static const String route = '/webview';
  final WebviewParams params;

  @override
  _WebviewPageState createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  bool hideLoading = false;
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
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: WebUri('${widget.params.url}'),
            ),
          ),
          Visibility(
            visible: !hideLoading,
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
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
