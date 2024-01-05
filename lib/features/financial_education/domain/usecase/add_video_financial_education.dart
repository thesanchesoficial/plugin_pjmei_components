import '../entity/video_entity.dart';

abstract class AddVideoFinancialEducation {
  Future<VideoFinancialEducationEntity> exec(VideoFinancialEducationEntity params, {bool log = false});
}