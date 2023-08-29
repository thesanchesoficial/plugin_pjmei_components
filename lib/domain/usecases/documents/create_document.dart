import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddDocument {
  Future<DocumentEntity> exec(DocumentEntity params, {bool log = false});
}