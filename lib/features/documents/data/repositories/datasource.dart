part of '../../../apis.dart';

class _DocumentsApi {
  
  Future<DocumentEntity> add({required DocumentEntity data}) {
    return makeRemoteAddDocument().exec(data);
  }

  Future<DocumentEntity> update({required String id, required DocumentEntity data}) {
    return makeRemoteUpdateDocument(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteDocument(id).exec();
  }

  Future<List<DocumentEntity>> list({Map<String, dynamic>? query}) {
    return makeRemoteListDocuments(params: query).exec();
  }

  Future<List<DocumentEntity>> listByCompany({required String id, Map<String, dynamic>? query}) {
    return makeRemoteListDocumentsByCnpj(id, params: query).exec();
  }
}
