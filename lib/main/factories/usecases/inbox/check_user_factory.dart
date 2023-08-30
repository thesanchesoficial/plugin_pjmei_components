import 'package:plugin_pjmei_components/data/usecases/check-user/remote_check_user.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';
import '../../factories.dart';

CheckUser makeRemoteCheckUser({required Map<String, dynamic> params}) => RemoteCheckUser(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/check-user', params: params),
);
