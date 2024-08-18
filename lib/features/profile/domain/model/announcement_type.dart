import 'dart:ui';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

enum AnnouncementType {
  order, equipment, service
}

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

String getAnnouncementTypeLabel(AnnouncementType type) {
  switch (type) {
    case AnnouncementType.order:
      return 'Заказы';
    case AnnouncementType.equipment:
      return 'Оборудование';
    case AnnouncementType.service:
      return 'Услуги';
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

extension AnnouncementTypeExtension on AnnouncementType {
  String get translated {
    switch (this) {
      case AnnouncementType.order:
        return 'Заказы';
      case AnnouncementType.equipment:
        return 'Оборудование';
      case AnnouncementType.service:
        return 'Услуги';
    }
  }
}
