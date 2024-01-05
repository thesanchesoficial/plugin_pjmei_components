import '../entity/document_subtype_entity.dart';

abstract class ListDocumentSubtype {
  Future<List<DocumentSubtypeEntity>> exec({bool log = false});
}
