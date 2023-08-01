import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class PostDasn {
  Future<Map<String, dynamic>> exec(DasnEntity params);
}
