import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class GetDocumentType {
  Future<List<DocumentTypeEntity>> exec({bool log = false});
}
