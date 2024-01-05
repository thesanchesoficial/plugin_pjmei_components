import '../entity/file_media_manager_entity.dart';

abstract class InsertImage {
  Future<FileMediaManagerEntity> exec(Map params, {bool log = false});
}