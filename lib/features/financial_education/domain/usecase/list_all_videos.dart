import '../entity/video_entity.dart';

abstract class ListVideosFinancialEducation {
  Future<List<VideoFinancialEducationEntity>> exec({bool log = false});
}
