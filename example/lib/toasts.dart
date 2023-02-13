import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class ToastsTestPage extends StatefulWidget {
  const ToastsTestPage({super.key});

  @override
  State<ToastsTestPage> createState() => _ToastsTestPageState();
}

class _ToastsTestPageState extends State<ToastsTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwAppBar(
        title: const Text('Plugin example app'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OwButton(
              labelText: "Show notification",
              onPressed: () {
                OwBotToast.notification(
                  context: context,
                );
              },
            ),
            OwButton(
              labelText: "Show toast",
              onPressed: () {
                OwBotToast.toast(
                  "Teste de toast",
                  context: context,
                );
              },
            ),
            OwButton(
              labelText: "Show loading",
              onPressed: () async {
                OwBotToast.loading(
                  context: context,
                );
                await Future.delayed(const Duration(seconds: 2));
                OwBotToast.close();
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _box() {
    return Container(
      width: 150,
      height: 150,
      color: Colors.red,
    );
  }
}
