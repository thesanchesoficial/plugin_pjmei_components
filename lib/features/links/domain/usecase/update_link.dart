import '../entity/link_entity.dart';

abstract class UpdateLink {
  Future<LinkEntity> exec(LinkEntity params, {bool log = false});
}
