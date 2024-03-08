part of '../../../apis.dart';

class _UploadApi {

  Future<FileEntity> upload(List<int> file) {
    return makeRemoteUploadFile().exec(file);
  }

}