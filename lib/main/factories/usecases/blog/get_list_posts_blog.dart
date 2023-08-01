import 'package:plugin_pjmei_components/data/usecases/blog/remote_get_list_posts_blog.dart';
import 'package:plugin_pjmei_components/domain/usecases/blog/get_list_posts_blog.dart';

import '../../factories.dart';

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
