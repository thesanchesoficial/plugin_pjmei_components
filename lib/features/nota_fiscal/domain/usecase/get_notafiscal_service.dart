import '../entity/notafiscal_service_entity.dart';

abstract class GetNotaFiscalService {
  Future<List<NotaFiscalServiceEntity>> exec({bool log = false});
}
