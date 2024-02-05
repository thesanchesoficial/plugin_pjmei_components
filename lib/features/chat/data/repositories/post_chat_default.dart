import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/post_chat_default.dart';
import '../usecase/remote_post_chat_default.dart';

PostChatDefault makePostChatDefault() => RemotePostChatDefault(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/chat/default'),
);