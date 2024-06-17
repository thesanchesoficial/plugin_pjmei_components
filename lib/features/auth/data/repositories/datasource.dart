part of '../../../apis.dart';

class _AuthApi {

  Future<UserEntity> login({required String email, required String password}) {
    return makeRemoteLogin().exec(LoginParams(email: email, password: password));
  }

  Future<UserEntity> register({required String email, required String password, required String token, required String birth, required String documentNumber, required String documentType, required String name, required String phone}) {
    return makeRemoteRegister().exec(RegisterParams(
      email: email,
      password: password,
      birth: birth,
      documentNumber: documentNumber,
      documentType: documentType,
      name: name,
      phone: phone,
      token: token,
    ));
  }

  Future<CheckIfUserExistsParams> verifyEmail({required String email}) {
    return makeRemoteCheckIfUserExistsByEmail(email).exec();
  }

  Future<UserEntity> newRefreshToken() {
    return makeRefreshToken().exec();
  }

  Future<bool> sendEmailRecoverPassword({required String email}) {
    return makeRemoteSendEmailRecoverPassword().exec(email);
  }

  Future<bool> newPassword({required String token, required String password}) {
    return makeRemoteNewPassword(token).exec(password);
  }

  Future<String> verifyEmailCode({required String email, required String code}) {
    return makeRemoteVerifyEmailCode().exec(email: email, code: code);
  }

  Future<bool> sendVerificationEmail({required String email}) {
    return makeRemoteSendVerifcationEmail().exec(email: email);
  }

  Future<bool> changePassword({required String oldPassword, required String newPassword}) {
    return makeRemoteChangePassword().exec(oldPassword, newPassword);
  }
}