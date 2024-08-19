// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_purchases_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchasesListModelImpl _$$PurchasesListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PurchasesListModelImpl(
      totalCount: (json['totalCount'] as num?)?.toInt(),
      advertisement: (json['advertisement'] as List<dynamic>?)
          ?.map((e) => PurchasesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLast: json['isLast'] as bool?,
    );

Map<String, dynamic> _$$PurchasesListModelImplToJson(
        _$PurchasesListModelImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'advertisement': instance.advertisement,
      'isLast': instance.isLast,
    };

_$PurchasesModelImpl _$$PurchasesModelImplFromJson(Map<String, dynamic> json) =>
    _$PurchasesModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      dateOfExecution: json['dateOfExecution'] as String?,
      imageUrl: json['imageUrl'] as String?,
      authorFullName: json['authorFullName'] as String?,
      authorImageUrl: json['authorImageUrl'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$PurchasesModelImplToJson(
        _$PurchasesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'dateOfExecution': instance.dateOfExecution,
      'imageUrl': instance.imageUrl,
      'authorFullName': instance.authorFullName,
      'authorImageUrl': instance.authorImageUrl,
      'type': instance.type,
    };
