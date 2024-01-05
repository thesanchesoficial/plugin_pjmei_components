import '../entity/nota_fiscal_entity.dart';

abstract class UpdateNotaFiscal {
  Future<NotaFiscalEntity> exec(NotaFiscalEntity nota, {bool log = false});
}