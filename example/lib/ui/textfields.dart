import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class TextfieldsTestPage extends StatefulWidget {
  const TextfieldsTestPage({super.key});

  @override
  State<TextfieldsTestPage> createState() => _TextfieldsTestPageState();
}

class _TextfieldsTestPageState extends State<TextfieldsTestPage> {
  final TextEditingController _controller = TextEditingController();
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
              OwTextField(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                labelText: "Label text",
                controller: _controller,
              ),
              OwTextField(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                hintText: "Hint text",
                controller: _controller,
              ),
              OwTextField(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                labelText: "Label text",
                hintText: "Hint text",
                controller: _controller,
              ),
              OwTextField(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                labelText: "Label text",
                hintText: "Hint text",
                prefixText: "R\$ ",
                controller: _controller,
              ),
              OwTextField(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                labelText: "Large",
                hintText: "Hint text",
                prefixText: "R\$ ",
                large: true,
                controller: _controller,
              ),
              OwTextField(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                hintText: "Hint text",
                prefixText: "R\$ ",
                large: true,
                hideBorder: true,
                colorText: Theme.of(context).colorScheme.primary,
                controller: _controller,
              ),
              OwTextField(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                hintText: "Hint text",
                prefixText: "R\$ ",
                hideBorder: true,
                color: Theme.of(context).colorScheme.error,
                colorText: Theme.of(context).colorScheme.primary,
                radius: 25,
                controller: _controller,
              ),
              OwTextField(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                helperText: "Helper text",
                controller: _controller,
              ),
              OwTextField(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                helperText: "Error",
                errorText: "error",
                controller: _controller,
              ),
              OwTextField(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                helperText: "Error",
                labelText: "sdfsdf",
                hintText: "fdxgdf",
                errorText: "error",
                controller: _controller,
              ),
              OwTextField.withSuggestions(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                helperText: "Error",
                labelText: "sdfsdf",
                hintText: "fdxgdf",
                errorText: "error",
                controller: _controller,
                suggestionsList: const ["Test", "dsffgsdfg", "fgfgdfg"],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
