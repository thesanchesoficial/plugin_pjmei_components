part of '../usecases.dart';

class _MeiBenefitsApi {

  Future<MeiBenefitsEntity> get({required String id}) {
    return makeRemoteGetMeiBenefits(id).exec();
  }

  Future<MeiBenefitsEntity> update({required String id}) {
    return makeRemoteUpdateMeiBenefits(id).exec();
  }

}
