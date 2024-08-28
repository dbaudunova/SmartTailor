import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/my_history_entity.dart';

@Injectable(as: Converter<MyHistoryModel, MyHistoryEntity>)
class GeneralResponseMapper extends Converter<MyHistoryModel, MyHistoryEntity> {
  final Converter<HistoryModel, HistoryEntity> _historyConverter;

  GeneralResponseMapper(this._historyConverter);

  @override
  MyHistoryEntity convert(MyHistoryModel input) {
    return MyHistoryEntity(
      isLast: input.isLast,
      totalCount: input.totalCount,
      advertisement: input.advertisement?.map((advertisment) => _historyConverter.convert(advertisment)).toList() ?? [],
    );
  }
}
