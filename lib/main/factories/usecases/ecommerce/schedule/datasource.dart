part of '../../usecases.dart';

class _ScheduleApi {

  Future<ScheduleEntity> find({required String id}) {
    return makeRemoteFindSchedule(id).exec();
  }
  
  Future<List<ScheduleEntity>> listByEcommerce({required String id}) {
    return makeRemoteListScheduleByEcommerce(id).exec();
  }

  Future<List<ScheduleEntity>> listByProduct({required String id}) {
    return makeRemoteListScheduleByProduct(id).exec();
  }

  Future<ScheduleEntity> insert({
    String? ecommerceId,
    String? productId,
    required List<ScheduleEntity> data,
  }) {
    return makeRemoteAddSchedule().exec(
      ecommerceId,
      productId,
      data
    );
  }

  Future<ScheduleEntity> update({required String id, required ScheduleEntity data}) {
    return makeRemoteUpdateSchedule(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteSchedule(id).exec();
  }

  Future<bool> deleteByProduct({required String id}) {
    return makeRemoteDeleteScheduleByProduct(id).exec();
  }

  Future<bool> deleteByEcommerce({required String id}) {
    return makeRemoteDeleteScheduleByEcommerce(id).exec();
  }
}