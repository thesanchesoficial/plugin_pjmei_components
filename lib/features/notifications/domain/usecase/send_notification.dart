abstract class SendNotification {
  Future<bool> exec({required String recipients, List<String>? ids, bool log = false});
}