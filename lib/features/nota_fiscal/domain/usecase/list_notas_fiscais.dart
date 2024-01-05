import '../entity/nota_fiscal_entity.dart';

abstract class ListNotasFiscais {
  Future<List<NotaFiscalEntity>> exec({bool log = false});
}