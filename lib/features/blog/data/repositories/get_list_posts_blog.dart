import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_list_posts_blog.dart';
import '../usecase/remote_get_list_posts_blog.dart';

GetListPostsBlog makeRemoteGetListPostsBlog({Map<String, dynamic>? params}) {
  String urlParams = '?a=a';
  params?.forEach((key, value) {
    urlParams = urlParams + '&$key=$value';
  });
  return RemoteGetListPostsBlog(
    httpClient: makeHttpAdapter(),
    url: 'https://www.pjmei.app/_functions/blog/posts$urlParams',
  );
}
