// import 'dart:io';
// import 'cupertino_http_client.dart' if(Platform.isIOS) 'package:cupertino_http/cupertino_client.dart';
// import 'cupertino_http_web.dart' if(Platform.isIOS) 'package:cupertino_http/cupertino_http.dart';
// import 'package:http/http.dart';

// class URLSessionConfigurationTest {

//   URLSessionConfigurationTest();

//   teste() {
//     if(Platform.isIOS) {
//       final config = URLSessionConfiguration.ephemeralSessionConfiguration()
//       ..allowsCellularAccess = true
//       ..allowsConstrainedNetworkAccess = true
//       ..allowsExpensiveNetworkAccess = true;
//       return CupertinoClient.fromSessionConfiguration(config);
//     } else {
//       return Client();
//     }
//   }
// }