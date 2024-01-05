part of '../../../../src/apis.dart';

class _ContactApi {

  Future<List<ContactEntity>> listByCompany() {
    return makeRemoteListContacts().exec();
  }

  Future<ContactEntity> insert({required ContactEntity data}) {
    return makeRemoteAddContact().exec(data);
  }

  Future<ContactEntity> update({required String id, required ContactEntity data}) {
    return makeRemoteUpdateContact(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteContact(id).exec();
  }
}