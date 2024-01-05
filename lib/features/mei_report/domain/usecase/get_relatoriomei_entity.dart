import '../entity/relatorio_mei_entity.dart';

abstract class GetRelatorioMeiEntity {
  Future<RelatorioMeiEntity> exec({bool log = false});
}
