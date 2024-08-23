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

  static const postRequestToExecuteOrder = '$baseUrl/api/order/send-request-to-execute-order/';
  static const postRequestToExecuteService = '$baseUrl/api/service/send-request-to-service/';
  static const postBuyEquipment = '$baseUrl/api/equipment/buy-equipment/';

  static const getProfile = '$baseUrl/api/account/profile';
  static const editProfile = '$baseUrl/api/account/profile/edit';
  static const uploadImage = '$baseUrl/api/account/profile/uploadImage';
  static const sendSubscription = '$baseUrl/api/app-user/send-subscription-request';

  static const getMyPurchases = '$baseUrl/api/account/my-purchases';

  static const assignExecutorToOrder = '$baseUrl/api/order/assign-executor-to-order';
  static const hideOrder = '$baseUrl/api/order/hide/';
  static const hideEquipment = '$baseUrl/api/equipment/hide/';
  static const hideService = '$baseUrl/api/service/hide/';
  static const deleteOrder = '$baseUrl/api/order/delete-order/';
  static const deleteEquipment = '$baseUrl/api/equipment/delete-equipment/';
  static const deleteService = '$baseUrl/api/service/delete-service/';

  static const getMyOrders = '$baseUrl/api/order/my-orders';
  static const getMyEquipments = '$baseUrl/api/equipment/my-equipments';
  static const getMyServices = '$baseUrl/api/service/my-services';
  static const getSearchAdvertisemnt = '$baseUrl/api/search/my-advertisements';

  static const getMyOrdersById = '$baseUrl/api/order/get-order-detailed-for-author/';
  static const getMyEquipmentsById = '$baseUrl/api/equipment/get-equipment-detailed-for-author/';
  static const getMyServicesById = '$baseUrl/api/service/get-service-detailed-for-author/';

  static const getOrganization = '$baseUrl/api/organization/get-organization-detailed';
  static const createOrganization = '$baseUrl/api/organization/create-organization';
  static const sendInvitationToEmployee = '$baseUrl/api/organization/send-invitation';

  static const getAllEmployees = '$baseUrl/api/employee/get-all-employees';
  static const getEmployeeDetail = '$baseUrl/api/employee/profile/';

  static const addPosition = '$baseUrl/api/position/add-position';
  static const getAvailablePosition = '$baseUrl/api/position/available-positions';
  static const gatAllPositions = '$baseUrl/api/position/get-all-positions';
  static const getAvailableAccessRights = '$baseUrl/api/position/available-access-rights';
  static const getAvailableWeights = '$baseUrl/api/position/available-weights';

  static const getAllCurrentOrders = '$baseUrl/api/order/get-organization-orders-by-stage';
  static const getCurrentOrderDetail = '$baseUrl/api/order/current-order-detailed';

  static const changeOrderStatus = '$baseUrl/api/order/change-status/';
  static const completeOrder = '$baseUrl/api/order/complete/';

  static const getHistoryOrdersForUser = '$baseUrl/api/order/order-history-for-user';
  static const getHistoryOrdersForOrganization = '$baseUrl/api/order/organization-order-history';

  static const getSearchOrders = '$baseUrl/api/search/order';
  static const getSearchEquipment = '$baseUrl/api/search/equipment';
  static const getSerachServices = '$baseUrl/api/search/service';
  static const getSerchMyAdvertisement = '$baseUrl/api/search/my-advertisements';

  static const sendToken = '$baseUrl/api/notification/register-device-token';
}
