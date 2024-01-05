import '../entity/document_entity.dart';

abstract class AddDocument {
  Future<DocumentEntity> exec(DocumentEntity params, {bool log = false});
}