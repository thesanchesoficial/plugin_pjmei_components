import '../entity/white_label_entity.dart';

abstract class FindWhiteLabel {
  Future<WhiteLabelEntity> exec({bool log = false});
}
