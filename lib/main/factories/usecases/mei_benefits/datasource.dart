part of '../usecases.dart';

class _MeiBenefitsApi {

  Future<MeiBenefitsEntity> get() {
    return makeRemoteGetMeiBenefits().exec();
  }

  Future<MeiBenefitsEntity> update() {
    return makeRemoteUpdateMeiBenefits().exec();
  }

}
