part of '../../../../src/apis.dart';

class _PayablesApi {

  Future<List<PayableEntity>> find({required String id, required Map<String, dynamic> params}) {
    return makeRemoteListPayables(id, params: params).exec();
  }

}