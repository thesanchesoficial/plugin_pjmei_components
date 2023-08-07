// import 'package:church_dashboard/app/data/http/http.dart';
// import 'package:church_dashboard/app/domain/entities/payable_entity.dart';
// import 'package:church_dashboard/app/domain/helpers/helpers.dart';
// import 'package:church_dashboard/app/domain/usecases/list_payables.dart';

// class RemoteListPayables implements ListPayables {
//   final HttpClient httpClient;
//   final String url;

//   RemoteListPayables({required this.httpClient, required this.url});

//   Future<List<PayableEntity>>  exec({bool log = false}) async {
//     try {
//       final httpResponse = await httpClient.request(
//         url: url,
//         method: 'get',
//       );
//       if ((httpResponse as Map<String, dynamic>).containsKey("erro")) {
//         throw HttpError.notFound;
//       }
//       return ((httpResponse["success"]) as List)
//           .map((e) => PayableEntity.fromMap(e))
//           .toList();
//     } on HttpError catch (_) {
//       throw DomainError.unexpected;
//     }
//   }
// }
