import 'package:dio/dio.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';

Failure handleDioException(DioException exception) {
  switch (exception.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.receiveTimeout:
    case DioExceptionType.sendTimeout:
      return Failure.connection(message: exception.type.toString());

    case DioExceptionType.badResponse:
      switch (exception.response?.statusCode) {
        case 400:
          return Failure.request(message: 'Неправильный запрос', status: 400);
        case 403:
          return Failure.request(message: 'Неавторизован', status: 401);
        case 401:
          return Failure.request(message: 'Доступ запрещен', status: 403);
        case 404:
          var conflictMessage = 'Ресурс не найден';
          if (exception.response?.data != null && exception.response?.data['message'] != null) {
            conflictMessage = exception.response?.data['message'];
          }
          return Failure.request(message: conflictMessage, status: 409);
        case 409:
          var conflictMessage = 'Произошел конфликт';
          if (exception.response?.data != null && exception.response?.data['message'] != null) {
            conflictMessage = exception.response?.data['message'];
          }
          return Failure.request(message: conflictMessage, status: 409);
        case 413:
          var conflictMessage = 'Ощибка';
          if (exception.response?.data != null && exception.response?.data['message'] != null) {
            conflictMessage = exception.response?.data['message'];
          }
          return Failure.request(message: conflictMessage, status: 409);
        // case 500:
        //   return Failure.server(message: 'Внутренняя ошибка сервера', status: 500);
        default:
          if (exception.response?.data['msg'] != null) {
            return Failure.other(message: exception.response?.data['msg'].toString());
          } else {
            return Failure.other(message: 'Неизвестная ошибка');
          }
      }

    default:
      if (exception.response?.data['msg'] != null) {
        return Failure.other(message: exception.response?.data['msg'].toString());
      } else {
        return Failure.other(message: exception.message);
      }
  }
}

Failure handleGeneralException(Object exception) {
  return Failure.other(message: exception.toString());
}
