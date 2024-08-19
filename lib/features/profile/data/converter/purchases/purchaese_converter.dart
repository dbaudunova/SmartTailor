import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_purchases/my_purchases_list_model.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/my_purchases.dart';

@Injectable(as: Converter<PurchasesModel, PurchasesEntity>)
class GeneralResponseMapper extends Converter<PurchasesModel, PurchasesEntity> {
  @override
  PurchasesEntity convert(PurchasesModel input) {
    return PurchasesEntity(
        authorFullName: input.authorFullName,
        authorImageUrl: input.authorImageUrl,
        dateOfExecution: input.dateOfExecution,
        description: input.description,
        id: input.id,
        imageUrl: input.imageUrl,
        name: input.name,
        price: input.price,
        type: input.type);
  }
}
