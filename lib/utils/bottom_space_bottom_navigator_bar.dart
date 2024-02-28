import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'variable.dart';

class HeightSpacerBottom extends StatelessWidget {
  const HeightSpacerBottom(this.bottom, {super.key});
  final double? bottom;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if(appSM.isWeb) {
          return const SizedBox(height: 0);
        } else {
          return SizedBox(height: bottom ?? 0);
        }
      },
    );
  }
}