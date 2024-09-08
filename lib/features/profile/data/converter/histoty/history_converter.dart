import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/my_history_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/my_purchases.dart';

@Injectable(as: Converter<HistoryModel, PurchasesEntity>)
class GeneralResponseMapper extends Converter<HistoryModel, HistoryEntity> {
  @override
  HistoryEntity convert(HistoryModel input) {
    return HistoryEntity(
      date: input.date,
      status: input.status,
      id: input.id,
      name: input.name,
      price: input.price,
    );
  }
}
