part of '../../../apis.dart';

class _DasApi {
  Future<List<DasItemEntity>> list({Map<String, dynamic>? params}) {
    return makeGetListDas(params: params).exec();
  }

  Future<DasItemEntity> generatePdf(String id) {
    return makeGeneratePdf().exec(id: id);
  }

  Future<List<DasItemEntity>> update({Map<String, dynamic>? params}) {
    return makeUpdateListDas(params: params).exec();
  }
}
