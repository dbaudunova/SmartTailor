import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/search_model/advertisement_model.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/search_entity.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@Injectable(as: Converter<AdvertisementModel, AdvertisementEntity>)
class AdvertisementModelToEntityConverter extends Converter<AdvertisementModel, AdvertisementEntity> {
  @override
  AdvertisementEntity convert(AdvertisementModel input) {
    return AdvertisementEntity(
      type: input.type,
      id: input.id,
      name: input.name,
      description: input.description,
      price: input.price,
      imageUrl: input.imageUrl,
      authorFullName: input.authorFullName,
      authorImageUrl: input.authorImageUrl,
    );
  }
}

@Injectable(as: Converter<AdvertisementResponseModel, AdvertisementResponseEntity>)
class AdvertisementResponseModelToEntityConverter
    extends Converter<AdvertisementResponseModel, AdvertisementResponseEntity> {
  @override
  AdvertisementResponseEntity convert(AdvertisementResponseModel input) {
    return AdvertisementResponseEntity(
      advertisement:
          input.advertisement.map(getIt<Converter<AdvertisementModel, AdvertisementEntity>>().convert).toList(),
      isLast: input.isLast,
      totalCount: input.totalCount,
    );
  }
}
