import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class FindProductById {
  Future<ProductEntity> exec({bool log = false});
}
