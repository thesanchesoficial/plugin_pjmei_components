part of '../../../../src/apis.dart';

class _RecipientApi {

  Future<RecipientEntity> find({required String id}) {
    return makeRemoteGetRecipient(id).exec();
  }

}