part of '../../../../src/apis.dart';

class _ExtractApi {

  Future<ExtractEntity> find({required String id}) {
    return makeRemoteGetBalance(id).exec();
  }
  
}
