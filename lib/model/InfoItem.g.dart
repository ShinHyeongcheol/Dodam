// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'InfoItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoList _$InfoListFromJson(Map<String, dynamic> json) => InfoList(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => InfoItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InfoListToJson(InfoList instance) => <String, dynamic>{
      'list': instance.list,
    };

InfoItem _$InfoItemFromJson(Map<String, dynamic> json) => InfoItem(
      Title: json['Title'] as String?,
      Write: json['Write'] as String?,
      Image: json['Image'] as String?,
      Update: json['Update'] == null
          ? null
          : DateTime.parse(json['Update'] as String),
    );

Map<String, dynamic> _$InfoItemToJson(InfoItem instance) => <String, dynamic>{
      'Title': instance.Title,
      'Write': instance.Write,
      'Image': instance.Image,
      'Update': instance.Update?.toIso8601String(),
    };
