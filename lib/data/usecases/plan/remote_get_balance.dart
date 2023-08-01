// import 'package:church_dashboard/app/data/http/http.dart';
// import 'package:church_dashboard/app/domain/entities/extract_entity.dart';
// import 'package:church_dashboard/app/domain/helpers/helpers.dart';
// import 'package:church_dashboard/app/domain/usecases/get_balance.dart';

// class RemoteGetBalance implements GetBalance {
//   final HttpClient httpClient;
//   final String url;

//   RemoteGetBalance({required this.httpClient, required this.url});

//   Future<ExtractEntity> exec() async {
//     try {
//       final httpResponse = await httpClient.request(
//         url: url,
//         method: 'get',
//       );
//       if ((httpResponse as Map<String, dynamic>).containsKey("erro")) {
//         throw HttpError.notFound;
//       }
//       return ExtractEntity.fromMap((httpResponse["success"]));
//     } on HttpError catch (_) {
//       throw DomainError.unexpected;
//     }
//   }
// }
