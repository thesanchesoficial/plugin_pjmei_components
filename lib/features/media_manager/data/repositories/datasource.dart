part of '../../../apis.dart';

class _MediaManagerApi {

  Future<FileMediaManagerEntity> insertImageWix({required Map<dynamic, dynamic> data}) {
    return makeRemoteInsertImage().exec(data);
  }

  Future<FileMediaAwsEntity> insertImageAws({required Map<dynamic, dynamic> data}) {
    return makeRemoteAddImageAws().exec(data);
  }

  Future<List<FileMediaManagerEntity>> listMediaWix({required int skip}) {
    return makeRemoteListFilesMediaManager(skip).exec();
  }
}