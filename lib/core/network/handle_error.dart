// import 'package:dio/dio.dart';
// import 'package:neobis_smart_tailor/core/network/entity/failure.dart';

// Failure _handleError(DioException error) {
//   switch (error.type) {
//     case DioExceptionType.connectionTimeout:
//       return DataSource.connectionTimeout.getFailure();
//     case DioExceptionType.sendTimeout:
//       return DataSource.sendTimeout.getFailure();
//     case DioExceptionType.receiveTimeout:
//       return DataSource.receiveTimeout.getFailure();
//     case DioExceptionType.badResponse:
//       if (error.response != null &&
//           error.response?.statusCode != null &&
//           error.response?.statusMessage != null) {
//         final formattedResponse = _formatErrorResponseText(error.response);
//         return Failure(
//           error.response?.statusCode ?? 0,
//           formattedResponse,
//         );
//       } else {
//         return DataSource.defaultError.getFailure();
//       }
//     case DioExceptionType.cancel:
//       return DataSource.cancel.getFailure();
//     default:
//       return DataSource.defaultError.getFailure();
//   }
// }
