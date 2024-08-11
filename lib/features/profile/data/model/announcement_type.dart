import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/announcement_model.dart';

enum AnnouncementType { order, equipment, service }

AnnouncementType typeFromString(String? typeString) {
  switch (typeString) {
    case 'ORDER':
      return AnnouncementType.order;
    case 'EQUIPMENT':
      return AnnouncementType.equipment;
    case 'SERVICE':
      return AnnouncementType.service;
    default:
      return AnnouncementType.order;
  }
}

void processData(List<Map<String, dynamic>> data) {
  var orders = <AnnouncementModel>[];
  var equipments = <AnnouncementModel>[];
  var services = <AnnouncementModel>[];

  for (var itemJson in data) {
    var item = AnnouncementModel.fromJson(itemJson);
    var itemType = typeFromString(item.type);

    switch (itemType) {
      case AnnouncementType.order:
        orders.add(item);
      case AnnouncementType.equipment:
        equipments.add(item);
      case AnnouncementType.service:
        services.add(item);
    }
  }

  Color typeColor(AnnouncementType type) {
    switch (type) {
      case AnnouncementType.order:
        return AppColors.lightBLue;
      case AnnouncementType.equipment:
        return AppColors.listGreen;
      case AnnouncementType.service:
        return AppColors.yellow;
    }
  }
}
