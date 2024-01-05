import '../entity/video_entity.dart';

abstract class GetListVideosByCategoryFinancialEducation {
  Future<List<VideoFinancialEducationEntity>> exec({bool log = false});
}
