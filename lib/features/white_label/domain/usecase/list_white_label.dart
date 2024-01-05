import '../entity/white_label_entity.dart';

abstract class ListWhiteLabel {
  Future<List<WhiteLabelEntity>> exec({bool log = false});
}
