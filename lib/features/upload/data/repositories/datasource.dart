part of '../../../apis.dart';

class _UploadApi {

  Future<FileEntity> upload(List<int>? file, {String? filename, MediaType? contentType, bool isPublic = false, bool log = false}) {
    return makeRemoteUploadFile().exec(
      file,
      filename: filename,
      contentType: contentType,
      isPublic: isPublic,
      log: log,
    );
  }

}