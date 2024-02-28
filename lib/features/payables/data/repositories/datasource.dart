part of '../../../apis.dart';

class _PayablesApi {

  Future<List<PayableEntity>> list({required String id, required Map<String, dynamic> params}) {
    return makeRemoteListPayables(id, params: params).exec();
  }

}