import '../entity/white_label_entity.dart';

abstract class AddWhiteLabel {
  Future<WhiteLabelEntity> exec(WhiteLabelEntity params, {bool log = false});
}
