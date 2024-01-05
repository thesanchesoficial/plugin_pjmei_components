import '../entity/video_entity.dart';

abstract class GetListVideosFinancialEducation {
  Future<List<VideoFinancialEducationEntity>> exec({bool log = false});
}
