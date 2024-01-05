import '../entity/document_entity.dart';

abstract class ListDocuments {
  Future<List<DocumentEntity>> exec({bool log = false});
}
