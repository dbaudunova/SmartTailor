import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_model/general_model.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_responce/general_responce.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/general_responce_entity.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@Injectable(as: Converter<GeneralResponceModel, GeneralResponceEntity>)
class GeneralResponceMapper
    extends Converter<GeneralResponceModel, GeneralResponceEntity> {
  @override
  GeneralResponceEntity convert(GeneralResponceModel input) {
    return GeneralResponceEntity(
        listEntitys: (input.listModels)
            .map((e) =>
                getIt<Converter<GeneralOrderModel, GeneralEntity>>().convert(e))
            .toList(),
        isLast: input.isLast,
        totalCount: input.totalCount!);
  }
}
