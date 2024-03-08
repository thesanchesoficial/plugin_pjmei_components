import 'package:plugin_pjmei_components/features/upload/domain/entity/file_entity.dart';
import 'package:http_parser/http_parser.dart';

abstract class UploadFile {
  Future<FileEntity> exec(List<int>? file, {String? filename, MediaType? contentType, bool isPublic = false, bool log = false});
}