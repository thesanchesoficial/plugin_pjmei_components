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
    required String name,
    required int index,
    required String ecommerceId,
  }) {
    return makeRemoteAddSchedule().exec({
      "name": name,
      "index": index,
      "ecommerceId": ecommerceId,
    });
  }

  Future<ScheduleEntity> update({required String id, required ScheduleEntity data}) {
    return makeRemoteUpdateSchedule(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteSchedule(id).exec();
  }
}