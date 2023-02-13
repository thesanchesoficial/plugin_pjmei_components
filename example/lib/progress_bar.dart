import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class ProgressBarTestPage extends StatefulWidget {
  const ProgressBarTestPage({super.key});

  @override
  State<ProgressBarTestPage> createState() => _ProgressBarTestPageState();
}

class _ProgressBarTestPageState extends State<ProgressBarTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwAppBar(
        title: const Text('Plugin example app'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            OwHorizontalProgressBar(),
            SizedBox(height: 30),
            OwHorizontalProgressBar(
              quantity: 5,
            ),
            SizedBox(height: 30),
            OwHorizontalProgressBar(
              quantity: 5,
              quantityFilled: 3,
            ),
            SizedBox(height: 30),
            OwHorizontalProgressBar(
              quantity: 5,
              quantityFilled: 3,
              progressColor: Colors.blue,
              colorAnimationLinearProgress:  AlwaysStoppedAnimation<Color>(
                Colors.red,
              ),
              barColor: Colors.yellow,
            ),
            SizedBox(height: 30),
            OwCircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
