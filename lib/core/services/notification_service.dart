import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/notification/data/models/notification_model.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/notification/presentation/bloc/notification_bloc.dart';

class NotificationService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  NotificationService._privateConstructor();

  static final NotificationService instance = NotificationService._privateConstructor();

  void initialize(BuildContext context) {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        final notification = NotificationModel(
          title: message.notification!.title ?? 'No Title',
          body: message.notification!.body ?? 'No Body',
          receivedAt: DateTime.now(),
          imageUrl: message.notification?.android?.imageUrl,
          data: message.data.isNotEmpty ? jsonEncode(message.data) : null,
        );

        context.read<NotificationBloc>().add(NotificationEvent.saveNoti(notification: notification));
        _showLocalNotification(message.notification!);
      }
    });
  }

  void _showLocalNotification(RemoteNotification notification) {
    print('dfdf');
  }
}
