part of '../../../apis.dart';

class _DasApi {
  Future<List<DasItemEntity>> list({Map<String, dynamic>? params}) {
    return makeGetListDas(params: params).exec();
  }

  Future<DasItemEntity> generatePdf(String year, String month) {
    return makeGeneratePdf().exec(month: month, year: year);
  }

  Future<bool> update({Map<String, dynamic>? params}) {
    return makeUpdateListDas(params: params).exec();
  }
}
