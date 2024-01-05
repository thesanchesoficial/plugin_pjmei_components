import '../entity/file_media_manager_entity.dart';

abstract class ListFilesMediaManager {
  Future<List<FileMediaManagerEntity>> exec({bool log = false});
}