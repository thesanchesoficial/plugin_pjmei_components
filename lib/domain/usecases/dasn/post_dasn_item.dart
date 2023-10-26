import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class PostDasnItem {
  Future<bool> exec(DasnDeclaration dasn, {bool log = false});
}
