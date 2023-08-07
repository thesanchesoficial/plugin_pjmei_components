import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateDocuments {
  Future<bool> exec(DocumentEntity params, {bool log = false});
}