import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class InsertProduct {
  Future<ProductEntity> exec({bool log = false});
}
