import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:neobis_smart_tailor/core/services/auth_service.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

// Future<String?> getFCMToken() async {
//   FirebaseMessaging messaging = FirebaseMessaging.instance;
//   String? token = await messaging.getToken();
//   print("FCM Token: $token"); // Вывод токена в консоль для отладки
//   return token;
// }

// Future<void> sendTokenToServer(String? token) async {
//   if (token != null) {
//     // Реализуйте логику отправки токена на ваш сервер
//     await getIt<AuthService>().sendFCMTokenToServer(token);
//   }
// }
