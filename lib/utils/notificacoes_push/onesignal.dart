import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class NotificacaoOneSignal {
  void initOneSignal() async {
    if (!kIsWeb) {
      try {
        OneSignal.initialize('${WhiteLabelEntity.current?.setting.notificationId}');
        final result = await OneSignal.Notifications.requestPermission(true);
        if(result) {
          await OneSignal.login('${userSM.user?.id}');
          OneSignal.User.pushSubscription.optIn();
          OneSignal.User.addEmail('${userSM.user?.email}');
          OneSignal.User.addSms('${userSM.user?.phone}');
          OneSignal.User.addTagWithKey('whiteLabel', '${WhiteLabelEntity.current?.id}');
          OneSignal.User.addTagWithKey('minimalVersion', '${minimalVersion}');
          OneSignal.User.addAlias('whiteLabel', '${WhiteLabelEntity.current?.id}');
          OneSignal.User.addAlias('minimalVersion', '${minimalVersion}');

          OneSignal.Notifications.addForegroundWillDisplayListener((event) async {
            final String info = event.notification.title.toString().toLowerCase();
            dynamic funcaoTap;
            dynamic icone;

            if (info.toLowerCase().contains('mensagem')) {
              icone = EvaIcons.messageSquareOutline;
              funcaoTap = () {};
            } else if (info.toLowerCase().contains('pedido')) {
              icone = Icons.shopping_bag_outlined;
              funcaoTap = () {};
            } else if (info.toLowerCase().contains('agendamento')) {
              icone = EvaIcons.calendarOutline;
              funcaoTap = () {};
            }
            OwBotToast.notification(
              title: event.notification.title ?? 'Você recebeu uma notificação',
              icon: icone ?? EvaIcons.bellOutline,
              subtitle: event.notification.body ?? 'Clique para acessar',
              onTap: funcaoTap,
            );
          });

          OneSignal.Notifications.addClickListener((openedResult) {
            final String info = openedResult.notification.title.toString().toLowerCase();
            dynamic funcaoTap;
            dynamic icone;

            if (info.toLowerCase().contains('mensage')) {
              icone = EvaIcons.messageSquareOutline;
              funcaoTap = () {};
            } else if (info.toLowerCase().contains('pedido')) {
              icone = Icons.shopping_bag_outlined;
              funcaoTap = () {};
            } else if (info.toLowerCase().contains('agendamento')) {
              icone = EvaIcons.calendarOutline;
              funcaoTap = () {};
            }
            OwBotToast.notification(
              title: openedResult.notification.title ?? 'Você recebeu uma notificação',
              icon: icone,
              subtitle: openedResult.notification.body ?? 'Clique para acessar',
              onTap: funcaoTap,
            );
          });
        }
      } catch (e) {
        //
      }
    }
  }

  void initOneSignal2() async {
    if (!kIsWeb) {
      try {
        await OneSignal.logout();
      } catch (e) {}
    }
  }
}
