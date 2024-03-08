import 'package:plugin_pjmei_components/features/upload/domain/entity/file_entity.dart';

abstract class UploadFile {
  Future<FileEntity> exec(List<int>? file, {bool log = false});
}