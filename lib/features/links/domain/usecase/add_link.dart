import '../entity/link_entity.dart';

abstract class AddLink {
  Future<LinkEntity> exec(LinkEntity params, {bool log = false});
}
