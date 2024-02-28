import 'package:flutter/widgets.dart';

import 'images/images_path.dart';
import 'strings/pt_br.dart';
import 'strings/translations.dart';

class R {
  static Translations strings = PtBr();
  static ImagesResources images = ImagesResources();

  static void load(Locale locale) {
    switch (locale.toString()) {
      default:
        strings = PtBr();
        break;
    }
  }
}
