import '../entity/link_entity.dart';

abstract class ListLinks {
  Future<List<LinkEntity>> exec({bool log = false});
}
