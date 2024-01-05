import '../entity/file_media_aws_entity.dart';

abstract class InsertImageAws {
  Future<FileMediaAwsEntity> exec(Map params, {bool log = false});
}
