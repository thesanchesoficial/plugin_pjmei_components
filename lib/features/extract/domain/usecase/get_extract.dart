import '../entity/extract_entity.dart';

abstract class GetExtract {
  Future<ExtractEntity> exec({bool log = false});
}
