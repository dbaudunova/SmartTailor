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
  static const createService = '$baseUrl/api/service/add-service';

  static const getService = '$baseUrl/api/service/get-all-services';
  static const getOrders = '$baseUrl/api/order/get-all-orders';
  static const getEquipments = '$baseUrl/api/equipment/get-all-equipments';

  static const getEquipmentById = '$baseUrl/api/equipment/get-equipment-detailed/';
  static const getOrderById = '$baseUrl/api/order/get-order-detailed/';
  static const getServiceById = '$baseUrl/api/service/get-service-detailed/';

  static const postRequestToExecute = '$baseUrl/api/order/send-request-to-execute-order/';
  static const postBuyEquipment = '$baseUrl/api/equipment/buy-equipment/';

  static const getProfile = '$baseUrl/api/account/profile';
  static const editProfile = '$baseUrl/api/account/profile/edit';
}
