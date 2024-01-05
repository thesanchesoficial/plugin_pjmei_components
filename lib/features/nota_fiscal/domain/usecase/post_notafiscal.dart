import '../entity/nota_fiscal_entity.dart';

abstract class PostNotaFiscal {
  Future<NotaFiscalEntity> exec(NotaFiscalEntity params, {bool log = false});
}
