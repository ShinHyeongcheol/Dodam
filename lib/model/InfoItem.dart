import 'package:json_annotation/json_annotation.dart';

part 'InfoItem.g.dart';

@JsonSerializable()
class InfoList {
  List<InfoItem>? list;

  InfoList({
    required this.list,
  });

  factory InfoList.fromJson(Map<String,dynamic> json) =>
      _$InfoListFromJson(json);

  Map<String,dynamic> toJson() => _$InfoListToJson(this);
}

@JsonSerializable()
class InfoItem{
  String? Title;
  String? Write;
  String? Image;
  DateTime? Update;

  InfoItem({
    required this.Title,
    required this.Write,
    required this.Image,
    required this.Update,

  });

  factory InfoItem.fromJson(Map<String,dynamic> json) =>
      _$InfoItemFromJson(json);

  Map<String,dynamic> toJson() => _$InfoItemToJson(this);

}
