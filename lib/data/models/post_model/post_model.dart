// json Serializable

import 'package:json_annotation/json_annotation.dart';
import 'package:postblocapp/domain/entities/post_entity.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel extends PostEntity {
  const PostModel(
      {required super.body,
      required super.id,
      required super.title,
      required super.userId});
  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}


//normal

// import 'package:postblocapp/domain/entities/post_entity.dart';

// class PostModel extends PostEntity {
//    PostModel({required title, required body, required id, required userid})
//       : super(id: id, body: body, title: title, userId: userid);

//   factory PostModel.fromJson(Map<String, dynamic> json) {
//     return PostModel(
//         title: json['title'],
//         body: json['body'],
//         id: json['id'],
//         userid: json['userId']);
//   }
// }




// freezed


// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:postblocapp/domain/entities/post_entity.dart';

// part 'post_model.freezed.dart';
// part 'post_model.g.dart';

// @freezed
// class PostModel with _$PostModel {
//   const factory PostModel({
//     required String title,
//     required String body,
//     required int id,
//     required int userId,
//   }) = _PostModel;

//   factory PostModel.fromJson(Map<String, dynamic> json) =>
//       _$PostModelFromJson(json);

//   factory PostModel.fromPostEntity(PostEntity postEntity) {
//     return PostModel(
//       title: postEntity.title,
//       body: postEntity.body,
//       id: postEntity.id,
//       userId: postEntity.userId,
//     );
//   }
// }
