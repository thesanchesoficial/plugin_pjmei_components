part of '../../../../src/apis.dart';

class _LinksApi {

  Future<List<LinkEntity>> list({required String id}) {
    return makeRemoteListLinks(id).exec();
  }

  Future<LinkEntity> insert({required LinkEntity data}) {
    return makeRemoteAddLink().exec(data);
  }

  Future<LinkEntity> update({required String id, required LinkEntity data}) {
    return makeRemoteUpdateLink(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteLink(id).exec();
  }
}