import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:url_launcher/url_launcher.dart';


import 'empty_download.dart'
if (dart.library.html) 'download.dart';

class DownloadParams {
  List<int>? bytes;
  Uint8List? imageBytes;
  String downloadName;
  String type;
  String? url;
  String msgSuccess;
  String msgError;
  bool isPrintWidget;
  bool isLink;
  bool isBytes;
  int? quality;

  DownloadParams.link({
    required this.url,
    this.downloadName = "file-pjmei",
    this.type = "pdf",
    this.msgError = "Erro ao tentar realizar download.",
    this.msgSuccess = "Download com sucesso.",
  }) : bytes = null, imageBytes = null, isPrintWidget = false, isBytes = false, isLink = true, quality = null;

  DownloadParams.bytes({
    required this.bytes,
    this.downloadName = "file-pjmei",
    this.type = "pdf",
    this.msgError = "Erro ao tentar realizar download.",
    this.msgSuccess = "Download com sucesso.",
  }) : url = null, imageBytes = null, isPrintWidget = false, isBytes = true, isLink = false, quality = null;

  DownloadParams.printWidget({
    required this.imageBytes,
    this.downloadName = "file-pjmei",
    this.type = "png",
    this.msgError = "Erro ao tentar realizar download.",
    this.msgSuccess = "Download com sucesso.",
    this.quality = 100,
  }) : url = null, bytes = null, isPrintWidget = true, isBytes = true, isLink = false;

}

void downloadToDevide(DownloadParams params) async {
  try {
    if(!kIsWeb) {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.storage,
      ].request();
      statuses[Permission.storage].toString();
    }
    if(kIsWeb) {
      if(params.url != null) {
        launchUrl(Uri.parse(params.url!));
      } else if(params.bytes != null) {
        String fileName = DateTime.now().millisecondsSinceEpoch.toString();
        String savename = "${params.downloadName}-$fileName.${params.type}";
        download(params.bytes!, downloadName: savename);
      }
      
    } else if (params.isLink) {
      // é link
      final output = await getTemporaryDirectory();
      String fileName = DateTime.now().millisecondsSinceEpoch.toString();
      String savename = "${params.downloadName}-$fileName.${params.type}";
      String savePath = "${output.path}/$savename";
      await Dio().download(params.url!, savePath);
    } else if (params.isPrintWidget) {
      // é print de widget
      await ImageGallerySaver.saveImage(params.imageBytes!, quality: params.quality!);
    } else if(params.isBytes) {
      // é bytes
      final output = await getTemporaryDirectory();
      String fileName = DateTime.now().millisecondsSinceEpoch.toString();
      String savename = "${params.downloadName}-$fileName.${params.type}";
      String savePath = "${output.path}/$savename";
      final file = File(savePath);
      await file.writeAsBytes(params.bytes!);
    } else {
      // nada
    }
    OwBotToast.toast(params.msgSuccess);
  } catch (e) {
    OwBotToast.toast(params.msgError);
  }
}