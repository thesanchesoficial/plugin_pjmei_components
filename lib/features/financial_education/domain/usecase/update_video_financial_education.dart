import '../entity/video_entity.dart';

abstract class UpdateVideoFinancialEducation {
  Future<VideoFinancialEducationEntity> exec(VideoFinancialEducationEntity category, {bool log = false});
}