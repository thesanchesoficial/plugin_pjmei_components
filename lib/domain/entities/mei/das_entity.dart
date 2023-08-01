import 'dart:convert';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class DasEntity {
  List<DasYearsEntity>? dasyears;
  List<DasDataEntity>? dasdata;

  DasEntity({
    this.dasyears,
    this.dasdata,
  });

  DasEntity copyWith({
    List<DasYearsEntity>? dasyears,
    List<DasDataEntity>? dasdata,
  }) {
    return DasEntity(
      dasyears: dasyears ?? this.dasyears,
      dasdata: dasdata ?? this.dasdata,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dasyears': dasyears!.map((x) => x.toMap()).toList(),
      'dasdata': dasdata!.map((x) => x.toMap()).toList(),
    };
  }

  factory DasEntity.fromMap(Map<String, dynamic> map) {
    return DasEntity(
      dasyears:
          List<DasYearsEntity>.from(map['years']?.map((x) => DasYearsEntity.fromMap(x))),
      dasdata: List<DasDataEntity>.from(map['data']?.map((x) => DasDataEntity.fromMap(x))),
    );
  }
  
  String toJson() => json.encode(toMap());

  factory DasEntity.fromJson(String source) => DasEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'DasEntity(dasyears: $dasyears, dasdata: $dasdata)';
}
