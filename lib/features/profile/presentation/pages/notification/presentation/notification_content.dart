import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/notification/data/models/notification_model.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/notification/presentation/bloc/notification_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/notification/notification_item.dart';

class NotificationContent extends StatefulWidget {
  const NotificationContent({super.key});

  @override
  State<NotificationContent> createState() => _NotificationContentState();
}

class _NotificationContentState extends State<NotificationContent> {
  @override
  void initState() {
    super.initState();
    context.read<NotificationBloc>().add(const NotificationEvent.loadNotifications());
  }

  // void _showLocalNotification(RemoteNotification notification) {
  //   const channel = AndroidNotificationChannel(
  //     'high_importance_channel',
  //     'High Importance Notifications',
  //     description: 'This channel is used for important notifications.',
  //     importance: Importance.max,
  //   );
  //   final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  //   flutterLocalNotificationsPlugin.show(
  //     notification.hashCode,
  //     notification.title,
  //     notification.body,
  //     NotificationDetails(
  //       android: AndroidNotificationDetails(
  //         channel.id,
  //         channel.name,
  //         channelDescription: channel.description,
  //         icon: 'ic_notification',
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyle(
        title: 'Уведомления',
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            AutoRouter.of(context).maybePop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 34),
        child: BlocBuilder<NotificationBloc, NotificationState>(
          builder: (context, state) {
            if (state.stateStatus == const StateStatus.loading()) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.stateStatus is Failure) {
              return Center(child: Text((state.stateStatus as Failure).message!));
            }

            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Column(
                        children: [
                          _buildNotificationListView(state.notificationList!),
                          const SizedBox(height: 24),
                          const Divider(color: AppColors.greyText),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: _buildReadAllRow(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  GestureDetector _buildReadAllRow() {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          const SizedBox(width: 28),
          const Icon(
            Icons.visibility_outlined,
            color: AppColors.greyText,
          ),
          const SizedBox(width: 16),
          Text(
            'Отметить все прочитанным',
            style: AppTextStyle.text14.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  ListView _buildNotificationListView(List<NotificationModel> notifications) {
    return ListView.builder(
      itemCount: notifications.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final notification = notifications[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          child: NotificationItem(
            title: notification.title,
            body: notification.body,
            // receivedAt: notification.receivedAt,
            imageUrl: notification.imageUrl,
            data: notification.data,
          ),
        );
      },
    );
  }
}
