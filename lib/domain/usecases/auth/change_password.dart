abstract class ChangePassword {
  Future<bool> exec(String oldPassword, String newPassword, {bool log = false});
}
