import 'package:freezed_annotation/freezed_annotation.dart';

enum OrderStatus { waiting, inProcess, checking, sending, arrived, notConfirmed }

OrderStatus typeFromString(String? typeString) {
  switch (typeString) {
    case 'WAITING':
      return OrderStatus.waiting;
    case 'IN_PROGRESS':
      return OrderStatus.inProcess;
    case 'CHECKING':
      return OrderStatus.checking;
    case 'SENDING':
      return OrderStatus.sending;
    case 'ARRIVED':
      return OrderStatus.arrived;
    default:
      return OrderStatus.notConfirmed;
  }
}

String getOrderStatusTypeLabel(OrderStatus type) {
  switch (type) {
    case OrderStatus.waiting:
      return 'В ожидании';
    case OrderStatus.inProcess:
      return 'В работе';
    case OrderStatus.checking:
      return 'Проверка';
    case OrderStatus.sending:
      return 'Отправка';
    case OrderStatus.arrived:
      return 'Прибыл';
    case OrderStatus.notConfirmed:
      return 'Не подтвержден';
  }
}

class OrderStatusConverter implements JsonConverter<OrderStatus, String> {
  const OrderStatusConverter();

  @override
  OrderStatus fromJson(String json) {
    switch (json) {
      case 'WAITING':
        return OrderStatus.waiting;
      case 'IN_PROGRESS':
        return OrderStatus.inProcess;
      case 'CHECKING':
        return OrderStatus.checking;
      case 'SENDING':
        return OrderStatus.sending;
      case 'ARRIVED':
        return OrderStatus.arrived;
      case 'NOT_CONFIRMED':
        return OrderStatus.notConfirmed;
      default:
        throw ArgumentError(
            '`$json` is not one of the supported values: WAITING, IN_PROGRESS, CHECKING, SENDING, ARRIVED, NOT_CONFIRMED');
    }
  }

  @override
  String toJson(OrderStatus object) {
    switch (object) {
      case OrderStatus.waiting:
        return 'WAITING';
      case OrderStatus.inProcess:
        return 'IN_PROGRESS';
      case OrderStatus.checking:
        return 'CHECKING';
      case OrderStatus.sending:
        return 'SENDING';
      case OrderStatus.arrived:
        return 'ARRIVED';
      case OrderStatus.notConfirmed:
        return 'NOT_CONFIRMED';
    }
  }
}
