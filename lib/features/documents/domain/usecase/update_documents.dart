import '../entity/document_entity.dart';

abstract class UpdateDocument {
  Future<DocumentEntity> exec(DocumentEntity params, {bool log = false});
}