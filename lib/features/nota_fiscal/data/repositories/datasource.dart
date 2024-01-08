part of '../../../../src/apis.dart';

class _NotaFiscalApi {
  Future<List<NotaFiscalEntity>> listNotasFiscaisDashboard() {
    return makeRemoteGetNotaFiscal().exec();
  }

  Future<List<NotaFiscalServiceEntity>> listNotasFiscaisService() {
    return makeRemoteGetListNotaFiscalService().exec();
  }

  Future<List<NotaFiscalEntity>> listNotasFiscais() {
    return makeRemoteListNotasFiscais().exec();
  }

  Future<NotaFiscalEntity> postNotaFiscal({required NotaFiscalEntity params}) {
    return makeRemotePostNotaFiscal().exec(params);
  }

  Future<NotaFiscalEntity> putNotaFiscal({required NotaFiscalEntity params}) {
    return makeRemoteUpdateNotaFiscal().exec(params);
  }
}
