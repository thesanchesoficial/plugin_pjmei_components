part of '../usecases.dart';

class _SecretsApi {

  // Future<CompanyEntity> find({required String id}) {
  //   return makeRemoteFindCompany(id).exec();
  // }

  Future<List<SecretEntity>> listByCompany({required String id}) {
    return makeRemoteListSecrets(id).exec();
  }

  Future<SecretEntity> insert({required SecretEntity data}) {
    return makeRemoteAddSecrets().exec(data);
  }

  Future<SecretEntity> update({required String id, required SecretEntity data}) {
    return makeRemoteUpdateSecrets(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteSecret(id).exec();
  }
}