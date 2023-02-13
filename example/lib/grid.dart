import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class GridTestPage extends StatefulWidget {
  const GridTestPage({super.key});

  @override
  State<GridTestPage> createState() => _GridTestPageState();
}

class _GridTestPageState extends State<GridTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwAppBar(
        title: const Text('Plugin example app'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OwGrid(
              children: [
                _box(),
                _box(),
                _box(),
                _box(),
                _box(),
                _box(),
              ],
            ),
            const SizedBox(height: 35),
            OwGrid.builder(
              numbersInRowAccordingToWidgth: const [100, 200, 300],
              itemCount: 10,
              itemBuilder: (context, index) {
                return _box();
              },
            ),
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
