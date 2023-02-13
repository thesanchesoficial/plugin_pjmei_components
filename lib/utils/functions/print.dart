import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class ShowPrintOn {
  final bool android;
  final bool fuchsia;
  final bool ios;
  final bool linux;
  final bool mac;
  final bool web;
  final bool windows;

  ShowPrintOn({
    this.android = false,
    this.fuchsia = false,
    this.ios = false,
    this.linux = false,
    this.mac = false,
    this.web = false,
    this.windows = false,
  });

  bool showOnThisDevice() {
    if(android && Platform.isAndroid) return true;
    if(ios && Platform.isIOS) return true;
    if(web && kIsWeb) return true;
    if(windows && Platform.isWindows) return true;
    if(mac && Platform.isMacOS) return true;
    if(linux && Platform.isLinux) return true;
    if(fuchsia && Platform.isFuchsia) return true;
    return false;
  }
}

void p([dynamic object, ShowPrintOn? showPrintOn]) {

  if(_isPrintEnabled(showPrintOn)) {
    final time = DateTime.now().millisecondsSinceEpoch;
    if (kDebugMode) {
      print("[$time]: $object");
    }
  }
}

void pList([List? list, ShowPrintOn? showPrintOn]) {
  if(_isPrintEnabled(showPrintOn)) {
    if(list != null) {
      p("${list.runtimeType} (length: ${list.length})");
      for(int i = 0; i < list.length; i++) {
        if(list[i] is String) list[i] = '"${list[i]}"';
        if (kDebugMode) {
          print("[$i]: ${list[i]}");
        }
      }
    } else {
      p("List = null");
    }
  }
}

void pMap([Map? map, ShowPrintOn? showPrintOn]) {
  if(_isPrintEnabled(showPrintOn)) {
    if(map != null) {
      p("${map.runtimeType} (length: ${map.length})");
      map.forEach((key, value) {
        if(key is String) key = '"$key"';
        if(value is String) value = '"$key"';
        if (kDebugMode) {
          print("$key: $value");
        }
      });
    } else {
      p("Map = null");
    }
  }
}

bool _isPrintEnabled([ShowPrintOn? showPrintOn]) {
  bool showOnDevice = showPrintOn?.showOnThisDevice() ?? true;
  return !kReleaseMode && !hidePrintApplication && showOnDevice;
}