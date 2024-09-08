import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_purchases/my_purchases_list_model.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/my_purchases.dart';

@Injectable(as: Converter<PurchasesListModel, PurchasesListEntity>)
class GeneralResponseMapper extends Converter<PurchasesListModel, PurchasesListEntity> {
  final Converter<PurchasesModel, PurchasesEntity> _purchaisesConverter;

  GeneralResponseMapper(this._purchaisesConverter);

  @override
  PurchasesListEntity convert(PurchasesListModel input) {
    return PurchasesListEntity(
        isLast: input.isLast,
        totalCount: input.totalCount,
        advertisement:
            input.advertisement?.map((advertisment) => _purchaisesConverter.convert(advertisment)).toList() ?? []);
  }
}
