// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostModel _$PostModelFromJson(Map<String, dynamic> json) => PostModel(
      body: json['body'] as String,
      id: json['id'] as int,
      title: json['title'] as String,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$PostModelToJson(PostModel instance) => <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'id': instance.id,
      'userId': instance.userId,
    };
