import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class DialogsTestPage extends StatefulWidget {
  const DialogsTestPage({super.key});

  @override
  State<DialogsTestPage> createState() => _DialogsTestPageState();
}

class _DialogsTestPageState extends State<DialogsTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwAppBar(
        title: const Text('Plugin example app'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OwButton(
                margin: const EdgeInsets.only(top: 10),
                labelText: "Only title",
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const OwAlertDialog(
                      title: "Teste",
                    ),
                  );
                },
              ),
              OwButton(
                margin: const EdgeInsets.only(top: 10),
                labelText: "Title e description",
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const OwAlertDialog(
                      title: "Teste",
                      description: "sdfdsfsdf",
                    ),
                  );
                },
              ),
              OwButton(
                margin: const EdgeInsets.only(top: 10),
                labelText: "Title, description and content",
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => OwAlertDialog(
                      title: "Teste",
                      description: "sdfdsfsd",
                      content: Switch(value: true, onChanged: (_) {}),
                    ),
                  );
                },
              ),
              OwButton(
                margin: const EdgeInsets.only(top: 10),
                labelText: "Title, description, content and buttons",
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => OwAlertDialog(
                      title: "Teste",
                      description: "sdfdsfsd",
                      content: Switch(value: true, onChanged: (_) {}),
                      buttons: [
                        OwButton.text(
                          labelText: "Teste",
                          onPressed: () {},
                        ),
                        OwButton.text(
                          labelText: "Teste 2",
                          onPressed: () {},
                        ),
                      ],
                    ),
                  );
                },
              ),
              OwButton(
                margin: const EdgeInsets.only(top: 10),
                labelText:
                    "Title, description, content, buttons and observations",
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => OwAlertDialog(
                      title: "Teste",
                      description: "sdfdsfsd",
                      content: Switch(value: true, onChanged: (_) {}),
                      observation: "sdafsaf",
                      buttons: [
                        OwButton.text(
                          labelText: "Teste",
                          onPressed: () {},
                        ),
                        OwButton.text(
                          labelText: "Teste 2",
                          onPressed: () {},
                        ),
                      ],
                    ),
                  );
                },
              ),
              OwButton(
                margin: const EdgeInsets.only(top: 10),
                labelText: "Test all",
                onPressed: () {
                  showOwDialog(
                    context: context,
                    title: "Teste" * 50,
                    description: "sdfdsfsd" * 80,
                    content: Switch(value: true, onChanged: (_) {}),
                    observation: "sdafsaf",
                    buttons: [
                      OwButton.text(
                        labelText: "Teste",
                        onPressed: () {},
                      ),
                      OwButton.text(
                        labelText: "Teste 2",
                        onPressed: () {},
                      ),
                      OwButton.text(
                        labelText: "Teste",
                        onPressed: () {},
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
