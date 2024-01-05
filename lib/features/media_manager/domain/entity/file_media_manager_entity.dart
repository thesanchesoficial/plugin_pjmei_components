import 'dart:convert';

class FileMediaManagerEntity {
  
  FileMediaManagerEntity({
    this.mediaType,
    this.isPrivate,
    this.sizeInBytes,
    this.fileUrl,
    this.fileName,
    this.originalFileName,
    this.mimeType,
    this.iconUrl,
    this.hash,
    this.width,
    this.height,
    this.parentFolderId,
    this.createdDate,
  });

  factory FileMediaManagerEntity.fromMap(Map<String, dynamic> map) {
    return FileMediaManagerEntity(
      mediaType: map['mediaType'] ?? '',
      isPrivate: map['isPrivate'] ?? false,
      sizeInBytes: map['sizeInBytes']?.toInt() ?? 0,
      fileUrl: map['fileUrl'] ?? '',
      fileName: map['fileName'] ?? '',
      originalFileName: map['originalFileName'] ?? '',
      mimeType: map['mimeType'] ?? '',
      iconUrl: map['iconUrl'] ?? '',
      hash: map['hash'] ?? '',
      width: map['width'] ?? 0,
      height: map['height'] ?? 0,
      parentFolderId: map['parentFolderId'] ?? '',
      createdDate: map['createdDate'] ?? '',
    );
  }

  factory FileMediaManagerEntity.fromJson(String source) => FileMediaManagerEntity.fromMap(json.decode(source));
  String? mediaType;
  bool? isPrivate;
  int? sizeInBytes;
  String? fileUrl;
  String? fileName;
  String? originalFileName;
  String? mimeType;
  String? iconUrl;
  String? hash;
  num? width;
  num? height;
  String? parentFolderId;
  String? createdDate;

  FileMediaManagerEntity copyWith({
    String? mediaType,
    bool? isPrivate,
    int? sizeInBytes,
    String? fileUrl,
    String? fileName,
    String? originalFileName,
    String? mimeType,
    String? iconUrl,
    String? hash,
    num? width,
    num? height,
    String? parentFolderId,
    String? createdDate,
  }) {
    return FileMediaManagerEntity(
      mediaType: mediaType ?? this.mediaType,
      isPrivate: isPrivate ?? this.isPrivate,
      sizeInBytes: sizeInBytes ?? this.sizeInBytes,
      fileUrl: fileUrl ?? this.fileUrl,
      fileName: fileName ?? this.fileName,
      originalFileName: originalFileName ?? this.originalFileName,
      mimeType: mimeType ?? this.mimeType,
      iconUrl: iconUrl ?? this.iconUrl,
      hash: hash ?? this.hash,
      width: width ?? this.width,
      height: height ?? this.height,
      parentFolderId: parentFolderId ?? this.parentFolderId,
      createdDate: createdDate ?? this.createdDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'mediaType': mediaType,
      'isPrivate': isPrivate,
      'sizeInBytes': sizeInBytes,
      'fileUrl': fileUrl,
      'fileName': fileName,
      'originalFileName': originalFileName,
      'mimeType': mimeType,
      'iconUrl': iconUrl,
      'hash': hash,
      'width': width,
      'height': height,
      'parentFolderId': parentFolderId,
      'createdDate': createdDate,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'FileMediaManagerEntity(mediaType: $mediaType, isPrivate: $isPrivate, sizeInBytes: $sizeInBytes, fileUrl: $fileUrl, fileName: $fileName, originalFileName: $originalFileName, mimeType: $mimeType, iconUrl: $iconUrl, hash: $hash, width: $width, height: $height, parentFolderId: $parentFolderId, createdDate: $createdDate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is FileMediaManagerEntity &&
      other.mediaType == mediaType &&
      other.isPrivate == isPrivate &&
      other.sizeInBytes == sizeInBytes &&
      other.fileUrl == fileUrl &&
      other.fileName == fileName &&
      other.originalFileName == originalFileName &&
      other.mimeType == mimeType &&
      other.iconUrl == iconUrl &&
      other.hash == hash &&
      other.width == width &&
      other.height == height &&
      other.parentFolderId == parentFolderId &&
      other.createdDate == createdDate;
  }

  @override
  int get hashCode {
    return mediaType.hashCode ^
      isPrivate.hashCode ^
      sizeInBytes.hashCode ^
      fileUrl.hashCode ^
      fileName.hashCode ^
      originalFileName.hashCode ^
      mimeType.hashCode ^
      iconUrl.hashCode ^
      hash.hashCode ^
      width.hashCode ^
      height.hashCode ^
      parentFolderId.hashCode ^
      createdDate.hashCode;
  }
}
