import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class BottomAppBarTestPage extends StatefulWidget {
  const BottomAppBarTestPage({super.key});

  @override
  State<BottomAppBarTestPage> createState() => _BottomAppBarTestPageState();
}

class _BottomAppBarTestPageState extends State<BottomAppBarTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwAppBar(
        title: const Text('Plugin example app'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
        ),
      ),
      bottomNavigationBar: OwBottomAppBar(
        child: Text("dfsdf", style: Theme.of(context).textTheme.displayLarge,),
      ),
    );
  }
}