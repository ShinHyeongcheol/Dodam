import 'package:json_annotation/json_annotation.dart';

part 'NotiItem.g.dart';

@JsonSerializable()
class NotiList {
  List<NotiItem>? list;

  NotiList({
    required this.list,
  });

  factory NotiList.fromJson(Map<String,dynamic> json) =>
      _$NotiListFromJson(json);

  Map<String,dynamic> toJson() => _$NotiListToJson(this);
}

@JsonSerializable()
class NotiItem{
  String? Title;
  String? Write;
  String? Image;
  DateTime? Update;

  NotiItem({
    required this.Title,
    required this.Write,
    required this.Image,
    required this.Update,

  });

  factory NotiItem.fromJson(Map<String,dynamic> json) =>
      _$NotiItemFromJson(json);

  Map<String,dynamic> toJson() => _$NotiItemToJson(this);

}
