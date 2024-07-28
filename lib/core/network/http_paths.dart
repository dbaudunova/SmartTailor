import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_equipment_use_case.dart';
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_service_use_case.dart';

class HttpPaths {
  static const baseUrl = 'https://smarttailor.xyz';

  static const registration = '$baseUrl/api/auth/sign-up';
  static const confirmation = '$baseUrl/api/auth/confirm-email';
  static const refreshToken = '$baseUrl/api/auth/refresh-token';
  static const login = '$baseUrl/api/auth/login';
  static const resendConfirmationCode = '$baseUrl/api/auth/resend-confirmation-code';
  static const signOut = '$baseUrl/api/auth/log-out';

  static const createOrder = '$baseUrl/api/order/add-order';
  static const createEquipment = '$baseUrl/api/equipment/add-equipment';
  static const createService = '$baseUrl/api/service/add';

  static const getService = '$baseUrl/api/service';
  static const getOrders = '$baseUrl/api/order/get-all-orders';
  static const getEquipments = '$baseUrl/api/equipment/get-all-equipments';

  static const getProfile = '$baseUrl/api/account/profile';
}
