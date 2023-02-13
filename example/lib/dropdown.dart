import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class DropdownTestPage extends StatefulWidget {
  const DropdownTestPage({super.key});

  @override
  State<DropdownTestPage> createState() => _DropdownTestPageState();
}

class _DropdownTestPageState extends State<DropdownTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwAppBar(
        title: const Text('Plugin example app'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OwDropdown(
                value: "Teste A",
                optionsList: const [
                  "Teste A",
                  "Teste B",
                  "Teste C",
                  "Teste D",
                ],
                onChanged: (p0) {},
              ),
              OwDropdown.type(
                value: "Masculino",
                dropdownType: DropdownType.gender(),
                onChanged: (p0) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}