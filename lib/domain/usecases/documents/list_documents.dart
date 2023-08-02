import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListDocuments {
  Future<List<DocumentEntity>> exec();
}