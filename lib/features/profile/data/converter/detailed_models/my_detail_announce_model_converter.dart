import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_detailde_announce_model/my_detailed_announce_model.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/my_detailed_annoucement_entity.dart';

@Injectable(as: Converter<MyDetailedAnnounceModel, MyDetailedAnnounceEntity>)
class GeneralResponseMapper extends Converter<MyDetailedAnnounceModel, MyDetailedAnnounceEntity> {
  @override
  MyDetailedAnnounceEntity convert(MyDetailedAnnounceModel input) {
    return MyDetailedAnnounceEntity(
        id: input.id,
        name: input.name,
        price: input.price,
        authorFullName: input.authorFullName,
        authorImage: input.authorImage,
        contactInfo: input.contactInfo,
        description: input.description,
        images: input.images,
        dateOfExecution: input.dateOfExecution,
        equipmentBuyers: input.equipmentBuyers,
        executor: input.executor,
        orderCandidates: input.orderCandidates,
        orderItems: input.orderItems,
        ordersStatus: input.ordersStatus,
        serviceApplicants: input.serviceApplicants);
  }
}
