import 'dart:convert';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteRegister implements Register {
  RemoteRegister({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<UserEntity> exec(RegisterParams params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        ignoreToken: true,
        body: RemoteRegisterParams.fromDomain(params).toMap(),
      );
      UserEntity temp = UserEntity.fromMap(httpResponse['success']['user']);
      temp = temp.copyWith(
        senha: params.password,
        refreshToken: httpResponse['success']['refreshToken'],
        accessToken: httpResponse['success']['accessToken'],
      );
      return temp;
    } on HttpError catch (error) {
      if (error == HttpError.badRequest) {
        throw DomainError.documentInUse;
      }
      throw DomainError.unexpected;
    }
  }
}

class RemoteRegisterParams {
  RemoteRegisterParams({
    required this.nome,
    required this.email,
    required this.loginEmail,
    required this.password,
    required this.nascimento,
    required this.telefone,
    required this.cpf,
    required this.endereco,
  });

  factory RemoteRegisterParams.fromMap(Map<String, dynamic> map) {
    return RemoteRegisterParams(
      nome: map['nome'] ?? '',
      email: map['email'] ?? '',
      loginEmail: map['loginEmail'] ?? '',
      password: map['password'] ?? '',
      nascimento: map['nascimento'] ?? '',
      telefone: map['telefone'] ?? '',
      cpf: map['cpf'] ?? '',
      endereco: List.from(map['endereco']),
    );
  }

  factory RemoteRegisterParams.fromJson(String source) =>
      RemoteRegisterParams.fromMap(json.decode(source));

  factory RemoteRegisterParams.fromDomain(RegisterParams params) {
    return RemoteRegisterParams(
      nome: params.nome,
      email: params.email,
      loginEmail: params.loginEmail,
      password: params.password,
      nascimento: params.nascimento,
      telefone: params.telefone,
      cpf: params.cpf,
      endereco: params.endereco,
    );
  }
  String nome;
  String email;
  String loginEmail;
  String password;
  String nascimento;
  String telefone;
  String cpf;
  List endereco;

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'email': email,
      'loginEmail': loginEmail,
      'password': password,
      'nascimento': nascimento,
      'telefone': telefone,
      'cpf': cpf,
      'endereco': endereco,
    };
  }

  String toJson() => json.encode(toMap());

  RemoteRegisterParams copyWith({
    String? nome,
    String? email,
    String? loginEmail,
    String? password,
    String? nascimento,
    String? telefone,
    String? cpf,
    List? endereco,
  }) {
    return RemoteRegisterParams(
      nome: nome ?? this.nome,
      email: email ?? this.email,
      loginEmail: loginEmail ?? this.loginEmail,
      password: password ?? this.password,
      nascimento: nascimento ?? this.nascimento,
      telefone: telefone ?? this.telefone,
      cpf: cpf ?? this.cpf,
      endereco: endereco ?? this.endereco,
    );
  }

  RegisterParams toEntity() {
    return RegisterParams(
      nome: nome,
      email: email,
      loginEmail: loginEmail,
      password: password,
      nascimento: nascimento,
      telefone: telefone,
      cpf: cpf,
      endereco: endereco,
    );
  }
}
