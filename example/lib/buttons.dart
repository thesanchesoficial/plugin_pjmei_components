import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class ButtonsTestPage extends StatefulWidget {
  const ButtonsTestPage({super.key});

  @override
  State<ButtonsTestPage> createState() => _ButtonsTestPageState();
}

class _ButtonsTestPageState extends State<ButtonsTestPage> {

  bool enable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwAppBar(
        title: const Text('Plugin example app'),
        actions: [
          IconButton(
            icon: const Icon(Icons.abc),
            onPressed: () {
              setState(() {
                enable = !enable;
              });
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OwButton.dynamic(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Dinamico",
              onPressed: () {},
              enable: enable,
            ),
            OwButton.dynamic(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Dinamico",
              onPressed: () {},
              leading: Icons.abc_outlined,
              trailing: Icons.abc_outlined,
              color: Colors.red,
              foregroundColor: Colors.blue,
              enable: enable,
              outline: true,
            ),
            OwButton(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Principal",
              onPressed: () {},
              enable: enable,
            ),
            OwButton.elevated(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Elevado",
              onPressed: () {},
              enable: enable,
            ),
            OwButton.secondary(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Secundário",
              onPressed: () {},
              enable: enable,
            ),
            OwButton.outline(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Outline",
              onPressed: () {},
              enable: enable,
            ),
            OwButton.text(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Text",
              onPressed: () {},
              enable: enable,
            ),
            OwButton(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Principal",
              leading: Icons.abc_outlined,
              onPressed: () {},
              enable: enable,
            ),
            OwButton.elevated(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Elevado",
              leading: Icons.abc_outlined,
              onPressed: () {},
              enable: enable,
            ),
            OwButton.secondary(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Secundário",
              leading: Icons.abc_outlined,
              onPressed: () {},
              enable: enable,
            ),
            OwButton.outline(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Outline",
              leading: Icons.abc_outlined,
              onPressed: () {},
              enable: enable,
            ),
            OwButton.text(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Text",
              leading: Icons.abc_outlined,
              onPressed: () {},
              enable: enable,
            ),
            OwButton(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Principal",
              trailing: Icons.abc_outlined,
              onPressed: () {},
              enable: enable,
            ),
            OwButton.elevated(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Elevado",
              trailing: Icons.abc_outlined,
              onPressed: () {},
              enable: enable,
            ),
            OwButton.secondary(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Secundário",
              trailing: Icons.abc_outlined,
              onPressed: () {},
              enable: enable,
            ),
            OwButton.outline(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Outline",
              trailing: Icons.abc_outlined,
              onPressed: () {},
              enable: enable,
            ),
            OwButton.text(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Text",
              trailing: Icons.abc_outlined,
              onPressed: () {},
              enable: enable,
            ),
            OwButton(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Principal",
              leading: Icons.abc_outlined,
              trailing: Icons.abc_outlined,
              onPressed: () {},
              enable: enable,
            ),
            OwButton.elevated(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Elevado",
              leading: Icons.abc_outlined,
              trailing: Icons.abc_outlined,
              onPressed: () {},
              enable: enable,
            ),
            OwButton.secondary(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Secundário",
              leading: Icons.abc_outlined,
              trailing: Icons.abc_outlined,
              onPressed: () {},
              enable: enable,
            ),
            OwButton.outline(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Outline",
              leading: Icons.abc_outlined,
              trailing: Icons.abc_outlined,
              onPressed: () {},
              enable: enable,
            ),
            OwButton.text(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Text",
              leading: Icons.abc_outlined,
              trailing: Icons.abc_outlined,
              onPressed: () {},
              enable: enable,
            ),
            OwButton(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Text dfgdfgdfgfgddfg dfsgdfsgdsfgfd gdsdf sdfsdfs dfsd",
              onPressed: () {},
              enable: enable,
            ),
            OwButton(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Text dfgdfgdfgfgddfg dfsgdfsgdsfgfd gdsdf sdfsdfs dfsd",
              onPressed: () {},
              enable: enable,
              center: false,
            ),
            OwButton(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Text dfgdfgdfgfgddfg dfsgdfsgdsfgfd gdsdf sdfsdfs dfsd",
              leading: Icons.abc_outlined,
              trailing: Icons.abc_outlined,
              onPressed: () {},
              enable: enable,
            ),
            OwButton(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Text",
              leading: Icons.add,
              trailing: Icons.star,
              onPressed: () {},
              enable: enable,
              center: false,
              expanded: true,
            ),
            OwButton(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              labelText: "Text",
              onPressed: () {},
              enable: enable,
              center: false,
              expanded: true,
            ),
            OwButton(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              onPressed: () {},
              enable: enable,
              center: false,
              expanded: true,
              child: const Icon(Icons.abc_outlined),
            ),
            OwButton(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              onPressed: () {},
              enable: enable,
              expanded: true,
              child: const Icon(Icons.abc_outlined),
            ),
            OwButton(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              onPressed: () {},
              enable: enable,
              child: const Icon(Icons.abc_outlined),
            ),
            OwButton(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              onPressed: () {},
              enable: enable,
              leading: Icons.add,
              trailing: Icons.star,
              child: const Icon(Icons.abc_outlined),
            ),
          ],
        ),
      ),
    );
  }
}