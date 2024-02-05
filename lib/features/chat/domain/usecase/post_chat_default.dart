import 'package:plugin_pjmei_components/features/chat/domain/entity/chat_default_entity.dart';

abstract class PostChatDefault {
  Future<ChatDefaultEntity> exec({required Map<String, dynamic> params, bool log = false});
}
