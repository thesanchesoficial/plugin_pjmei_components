import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class Login {
  Future<UserEntity> exec(LoginParams params);
}

class LoginParams {
  LoginParams({
    required this.email,
    required this.password,
  });
  String email;
  String password;
}
