import '../entity/beneficios_entity.dart';

abstract class ListAllDasYears {
  Future<BeneficiosEntity> exec(bool put, {bool log = false});
}
