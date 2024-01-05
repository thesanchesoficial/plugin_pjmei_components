import 'package:http/http.dart';
import 'package:plugin_pjmei_components/test/data/http/http.dart';
import 'package:plugin_pjmei_components/infra/http/http.dart';

HttpClient makeHttpAdapter() {
  final Client client = Client();
  return HttpAdapter(client);
}