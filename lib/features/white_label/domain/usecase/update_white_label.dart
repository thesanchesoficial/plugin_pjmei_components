import '../entity/white_label_entity.dart';

abstract class UpdateWhiteLabel {
  Future<WhiteLabelEntity> exec(WhiteLabelEntity params, {bool log = false});
}
