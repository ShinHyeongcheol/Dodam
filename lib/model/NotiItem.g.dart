// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NotiItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotiList _$NotiListFromJson(Map<String, dynamic> json) => NotiList(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => NotiItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NotiListToJson(NotiList instance) => <String, dynamic>{
      'list': instance.list,
    };

NotiItem _$NotiItemFromJson(Map<String, dynamic> json) => NotiItem(
      Title: json['Title'] as String?,
      Write: json['Write'] as String?,
      Image: json['Image'] as String?,
      Update: json['Update'] == null
          ? null
          : DateTime.parse(json['Update'] as String),
    );

Map<String, dynamic> _$NotiItemToJson(NotiItem instance) => <String, dynamic>{
      'Title': instance.Title,
      'Write': instance.Write,
      'Image': instance.Image,
      'Update': instance.Update?.toIso8601String(),
    };
