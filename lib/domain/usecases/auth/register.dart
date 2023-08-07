import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class Register {
  Future<UserEntity> exec(RegisterParams params, {bool log = false});
}

class RegisterParams {
  RegisterParams({
    required this.nome,
    required this.email,
    required this.loginEmail,
    required this.password,
    required this.nascimento,
    required this.telefone,
    required this.cpf,
    required this.endereco,
  });
  String nome;
  String email;
  String loginEmail;
  String password;
  String nascimento;
  String telefone;
  String cpf;
  List endereco;
}
