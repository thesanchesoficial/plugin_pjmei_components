import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class CreateDocuments {
  Future<bool> exec(DocumentEntity params, List<int>? file);
}