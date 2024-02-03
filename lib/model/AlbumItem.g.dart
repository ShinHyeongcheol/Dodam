// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AlbumItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumList _$AlbumListFromJson(Map<String, dynamic> json) => AlbumList(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => AlbumItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlbumListToJson(AlbumList instance) => <String, dynamic>{
      'list': instance.list,
    };

AlbumItem _$AlbumItemFromJson(Map<String, dynamic> json) => AlbumItem(
      Image: json['Image'] as String?,
      Dday: json['Dday'] as int?,
      Update: json['Update'] as String?,
      writer: json['writer'] as String?,
    );

Map<String, dynamic> _$AlbumItemToJson(AlbumItem instance) => <String, dynamic>{
      'Image': instance.Image,
      'Dday': instance.Dday,
      'Update': instance.Update,
      'writer': instance.writer,
    };
