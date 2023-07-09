import 'package:hive/hive.dart';

import '../../logic/entities/activity_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'activity_model.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class ActivityModel extends ActivityEntity {
  @HiveField(0)
  @JsonKey(name: "activity")
  @override
  get name;
  @HiveField(1)
  @JsonKey(name: "link")
  @override
  get url;
  @HiveField(2)
  @JsonKey(name: "type")
  @override
  get type;
  const ActivityModel(
      {required super.name, required super.url, required super.type});

  factory ActivityModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityModelFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityModelToJson(this);
}
