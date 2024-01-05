import '../entity/document_type_entity.dart';

abstract class ListDocumentType {
  Future<List<DocumentTypeEntity>> exec({bool log = false});
}
