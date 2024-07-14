// import 'package:dio/dio.dart';
// import 'package:fpdart/fpdart.dart';
// import 'package:neobis_smart_tailor/core/network/entity/failure.dart';

// Left<Failure, T> onRepositoryException<T>(dynamic exception) {
//   late final Failure failure;

//   if (exception is DioException) {
//     if (exception.type == DioExceptionType.connectionTimeout ||
//         exception.type == DioExceptionType.receiveTimeout ||
//         exception.type == DioExceptionType.sendTimeout) {
//       failure = ConnectionFailure(message: exception.type.toString());
//     } else {
//       if (exception.response?.statusCode == 403) {
//         failure = Authorization(message: 'Token invalidate');
//       } else
//        {
//         if (exception.response != null && exception.response?.data['msg'].toString() != null) {
//           failure = OtherFailure(message: exception.response?.data['msg']);
//         } else {
//           failure = OtherFailure(message: exception.message);
//         }
//       }
//     }
//   } else {
//     failure = OtherFailure(message: exception.toString());
//   }

//   return Left(failure);
// }

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';

Left<Failure, T> onRepositoryException<T>(dynamic exception) {
  late final Failure failure;

  if (exception is DioException) {
    if (exception.type == DioExceptionType.connectionTimeout ||
        exception.type == DioExceptionType.receiveTimeout ||
        exception.type == DioExceptionType.sendTimeout) {
      failure = ConnectionFailure(message: 'Проблема с соединением. Попробуйте снова.');
    } else {
      if (exception.response?.statusCode == 403) {
        failure = Authorization(message: 'Токен истёк. Пожалуйста, войдите снова.');
      } else if (exception.response?.statusCode == 409) {
        failure = OtherFailure(message: 'Данная почта уже зарегистрирована');
      } else if (exception.response != null && exception.response?.data['msg'] != null) {
        failure = OtherFailure(message: exception.response?.data['msg'].toString());
      } else {
        failure = OtherFailure(message: 'Произошла ошибка. Попробуйте снова.');
      }
    }
  } else {
    failure = OtherFailure(message: 'Неизвестная ошибка: ${exception.toString()}');
  }

  return Left(failure);
}
