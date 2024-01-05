part of '../../../../src/apis.dart';

class _MeiReportApi {

  Future<RelatorioMeiEntity> get({required String id, required int year, required int month}) {
    return makeRemoteGetRelatorioMei(id, month, year).exec();
  }

}
