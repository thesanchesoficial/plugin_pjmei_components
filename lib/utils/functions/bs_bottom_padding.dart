import 'package:flutter/cupertino.dart';

class BS {
  BS._();

  static double bottomPadding(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom;
  }
}