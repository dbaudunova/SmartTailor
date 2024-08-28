import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/auth_info.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/services/secure_storage_service.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@singleton
class AuthService {
  AuthData? _cachedUser;
  String? _cachedAppleID;

  AuthData? get cachedUser => _cachedUser;

  String? get cachedAppleID => _cachedAppleID;

  set cachedUser(AuthData? info) {
    _cachedUser = info;
    if (_cachedUser != null) {
      getIt<SecureStorageService>().setUser(_cachedUser!);
      _sendToken();
    }
  }

  Future<void> recoverUser() async {
    _cachedUser = await getIt<SecureStorageService>().getUser();
    _sendToken();
  }

  Future<void> _sendToken() async {
    final fcmToken = await FirebaseMessaging.instance.getToken();
    await getIt<HttpClient>().sendFcmToken(fcmToken!);
  }

  Future<void> signOut() async {
    await getIt<SecureStorageService>().wipeStorage();
    _cachedUser = null;
    _unsubscribeFromNotifications();
  }

  void _unsubscribeFromNotifications() {
    FirebaseMessaging.instance.unsubscribeFromTopic('all');
    FirebaseMessaging.instance.deleteToken();
  }
}
