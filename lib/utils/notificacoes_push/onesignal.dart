import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class NotificacaoOneSignal {
  void initOneSignal() async {
    if (!kIsWeb) {
      try {
        var status = await Permission.notification.status;
        if (status.isDenied || status.isLimited) {
          await Permission.notification.request();
        }
        if(await Permission.notification.isGranted && Valid.text(userSM.user?.id)) {
          OneSignal.initialize('${WhiteLabelEntity.current?.setting.notificationId}');
          await OneSignal.login('${userSM.user?.id}');
          if(OneSignal.User.pushSubscription.optedIn ?? false) {
            // inscrito
          } else {
            await OneSignal.User.pushSubscription.optIn();
          }
          OneSignal.User.addTagWithKey('whiteLabel', '${WhiteLabelEntity.current?.id}');
          OneSignal.User.addTagWithKey('minimalVersion', '${minimalVersion}');

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
        await OneSignal.User.pushSubscription.optOut();
        await OneSignal.logout();
      } catch (e) {}
    }
  }
}
