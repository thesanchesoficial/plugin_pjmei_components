import '../entity/nota_fiscal_entity.dart';

abstract class GetNotaFiscal {
  Future<List<NotaFiscalEntity>> exec({bool log = false});
}
