import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateDocumentFilters {
  Future<DocumentFilterEntity> exec(DocumentFilterEntity params, {bool log = false});
}