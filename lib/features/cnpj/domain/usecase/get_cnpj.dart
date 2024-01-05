import '../entity/cnpj_entity.dart';

abstract class GetCnpj {
  Future<CnpjEntity> exec({bool log = false});
}
