import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListDocumentFilters {
  Future<List<DocumentFilterEntity>> exec({bool log = false});
}
