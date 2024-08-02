import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/models/service_detail_model/service_detail_model.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/entitys/service_detail_entity.dart';

@Injectable(as: Converter<ServiceDetailModel, ServiceDetailEntity>)
class ServiceDetailMapper extends Converter<ServiceDetailModel, ServiceDetailEntity> {
  @override
  ServiceDetailEntity convert(ServiceDetailModel input) {
    return ServiceDetailEntity(
      id: input.id,
      authorFullName: input.authorFullName,
      name: input.name,
      description: input.description,
      price: input.price,
      authorImage: input.authorImage,
      contactInfo: input.contactInfo,
      serviceImages: input.serviceImages,
    );
  }
}
