import 'package:json_annotation/json_annotation.dart';
import 'package:postblocapp/domain/entities/products_entity.dart';

part 'products_model.g.dart';

@JsonSerializable()
class ProductsModel extends ProductsEntity {

  const ProductsModel(
      {required super.id,
      required super.title,
      required super.description,
      required super.price,
      required super.discountPercentage,
      required super.rating,
      required super.stock,
      required super.brand,
      required super.category,
      required super.thumbnail,
      required super.images});
  factory ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsModelFromJson(json);
}
