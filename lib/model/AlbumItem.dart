import 'package:json_annotation/json_annotation.dart';

part 'AlbumItem.g.dart';

@JsonSerializable()
class AlbumList {
  List<AlbumItem>? list;

  AlbumList({
    required this.list,
  });

  factory AlbumList.fromJson(Map<String,dynamic> json) =>
      _$AlbumListFromJson(json);

  Map<String,dynamic> toJson() => _$AlbumListToJson(this);
}

@JsonSerializable()
class AlbumItem{
  String? Image;
  int? Dday;
  String? Update;
  String? writer;

  AlbumItem({
    required this.Image,
    required this.Dday,
    required this.Update,
    required this.writer,
  });

  factory AlbumItem.fromJson(Map<String,dynamic> json) =>
      _$AlbumItemFromJson(json);

  Map<String,dynamic> toJson() => _$AlbumItemToJson(this);

}
