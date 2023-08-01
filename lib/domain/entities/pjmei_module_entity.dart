import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/config/framework/environment.dart';
import 'package:plugin_pjmei_components/domain/entities/session_pjmei_entity.dart';
import 'package:plugin_pjmei_components/domain/entities/shortcut_entity.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/ui/components/cards/highlight_message_card.dart';

import 'discover_entity.dart';

class ModulePjmei {
  ModulePjmei({
    this.id,
    this.title,
    this.description,
    this.displayType,
    required this.index,
    this.image,
    this.route,
    this.spotlight,
    this.sessions,
    this.minimalVersion = 0,
    required this.params,
  });

  factory ModulePjmei.fromMap(Map<String, dynamic> map) {
    // final int minimalVersion = map['minimalVersion'] ?? 0;
    // final int maximalVersion = map['maximalVersion'] ?? 9999999999;

    // final Map<String, dynamic> params = Map<String, dynamic>.from(map['params'] ?? {});
    // final bool isWeb = params['isWeb'] ?? true;
    // final bool isAndroid = params['isAndroid'] ?? true;
    // final bool isIos = params['isIos'] ?? true;
    // final bool smallScreen = params['smallScreen'] ?? true;
    // final bool largeScreen = params['largeScreen'] ?? true;

    // if (minimalVersion > Environment.current!.minimalVersion ||
    //     maximalVersion < Environment.current!.minimalVersion) {
    //   return ModulePjmei(
    //     displayType: 'DEVELOPMENT',
    //     title: '-',
    //     index: 999,
    //     params: {},
    //   );
    // }

    // if (kIsWeb) {
    //   if (!isWeb) {
    //     return ModulePjmei(
    //       displayType: 'DEVELOPMENT',
    //       title: '-',
    //       index: 999,
    //       params: {},
    //     );
    //   }
    // } else {
    //   if (Platform.isAndroid && !isAndroid) {
    //     return ModulePjmei(
    //       displayType: 'DEVELOPMENT',
    //       title: '-',
    //       index: 999,
    //       params: {},
    //     );
    //   } else if (Platform.isIOS && !isIos) {
    //     return ModulePjmei(
    //       displayType: 'DEVELOPMENT',
    //       title: '-',
    //       index: 999,
    //       params: {},
    //     );
    //   }
    // }

    // if (appSM.isWeb) {
    //   if (!largeScreen) {
    //     return ModulePjmei(
    //       displayType: 'DEVELOPMENT',
    //       title: '-',
    //       index: 999,
    //       params: {},
    //     );
    //   }
    // } else {
    //   if (!smallScreen) {
    //     return ModulePjmei(
    //       displayType: 'DEVELOPMENT',
    //       title: '-',
    //       index: 999,
    //       params: {},
    //     );
    //   }
    // }

    final Map<String, dynamic> paramsDynamic = {
      '#moduleId': map['id'],
    };

    final Map<String, dynamic> paramsTemp = map;
    paramsTemp.addAll(Map<String, dynamic>.from(
      map['params'] ?? {},
    ));

    return ModulePjmei(
      id: map['id'] ?? '',
      title: convertString(map['title'], additionals: paramsDynamic),
      description: convertString(map['description'], additionals: paramsDynamic),
      displayType: map['displayType'] ?? '',
      index: map['index'] ?? 900,
      image: Map<String, dynamic>.from(map['image'] ?? {}),
      route: convertString(map['route'], additionals: paramsDynamic),
      spotlight: map['spotlight'] ?? '',
      sessions: map['sessions'] == null ? [] : List<SessionPjmei>.from(
        map['sessions']?.map((x) => SessionPjmei.fromMap(x)),
      ),
      minimalVersion: map['minimalVersion'] ?? 0,
      params: paramsTemp,
    );
  }

  factory ModulePjmei.fromJson(String source) => ModulePjmei.fromMap(json.decode(source));
  
  String? id;
  String? title;
  String? description;
  String? displayType;
  int index;
  Map<String, dynamic>? image;
  String? route;
  String? spotlight;
  List<SessionPjmei>? sessions;
  int? minimalVersion;
  Map<String, dynamic> params;

  ModulePjmei copyWith({
    String? id,
    String? title,
    String? description,
    String? displayType,
    int? index,
    Map<String, dynamic>? image,
    String? route,
    String? spotlight,
    List<SessionPjmei>? sessions,
    int? minimalVersion,
    Map<String, dynamic>? params,
  }) {
    return ModulePjmei(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      displayType: displayType ?? this.displayType,
      index: index ?? this.index,
      image: image ?? this.image,
      route: route ?? this.route,
      spotlight: spotlight ?? this.spotlight,
      sessions: sessions ?? this.sessions,
      minimalVersion: minimalVersion ?? this.minimalVersion,
      params: params ?? this.params,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'displayType': displayType,
      'index': index,
      'image': image,
      'route': route,
      'spotlight': spotlight,
      'sessions': sessions?.map((x) => x.toMap()).toList(),
      'minimalVersion': minimalVersion,
      'params': params,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'ModulePjmei(id: $id, title: $title, description: $description, displayType: $displayType, index: $index, image: $image, params: $params, route: $route, spotlight: $spotlight, sessions: $sessions, minimalVersion: $minimalVersion)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ModulePjmei &&
        other.id == id &&
        other.title == title &&
        other.description == description &&
        other.displayType == displayType &&
        other.index == index &&
        mapEquals(other.image, image) &&
        mapEquals(other.params, params) &&
        other.route == route &&
        other.spotlight == spotlight &&
        listEquals(other.sessions, sessions);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        displayType.hashCode ^
        index.hashCode ^
        image.hashCode ^
        params.hashCode ^
        route.hashCode ^
        spotlight.hashCode ^
        sessions.hashCode;
  }

  ShortcutsEntity toShortcuts(context, {bool color = false, Color? iconColor}) {
    image ??= {};
    Widget child;
    final String type = image!['type'].toString();
    switch (type) {
      case 'ASSET':
        child = Image.asset(
          image!['value'],
          width: 30,
          height: 30,
          color: iconColor,
        );
        break;
      case 'NETWORK':
        child = Image.network(
          image!['value'],
          width: 30,
          height: 30,
          color: iconColor,
        );
        break;
      case 'ICON':
        child = Icon(
          IconAdapter.getIcon(image!['value']),
          size: 22,
          color: iconColor ?? (color || params['iconColor'] == true
            ? Theme.of(context).colorScheme.primary
            : iconColor ?? Theme.of(context).textTheme.bodyLarge?.color),
        );
        break;
      default:
        child = const SizedBox();
    }

    final ShortcutsEntity shortcutsEntity = ShortcutsEntity(
      image: child,
      title: title,
      description: description,
      router: route,
      spotlight: spotlight,
      params: null,
    );
    return shortcutsEntity;
  }

  DiscoverEntity toDiscover(context) {
    Widget child;
    image ??= {};

    final String type = image!['type'].toString();

    switch (type) {
      case 'ASSET':
        child = Image.asset(
          image!['value'],
          fit: BoxFit.cover,
        );
        break;
      case 'NETWORK':
        child = Image.network(
          image!['value'],
          fit: BoxFit.cover,
        );
        break;
      case 'ICON':
        child = Icon(
          IconAdapter.getIcon(image!['value']),
          size: 30,
          color: Theme.of(context).iconTheme.color,
        );
        break;
      default:
        child = const SizedBox();
    }

    final DiscoverEntity discoverEntity = DiscoverEntity(
      image: child,
      title: title,
      description: description,
      label: params['labelButton'] ?? 'Acessar',
      router: route,
      params: toMap(),
    );
    return discoverEntity;
  }


  String? getSpotlightText(context) {
    if ((minimalVersion ?? 1000000) <= Environment.current!.minimalVersion) {
      // entrou porque o aplicativo possui a versao minima para o modulo
      // funcionar
      if (toShortcuts(context).spotlight?.isNotEmpty ?? false) {
        // entrou porque existe uma frase de destaque
        if (toShortcuts(context).spotlight!.toLowerCase().contains('breve')) {
          // o aplicativo roda a versão, então se possuir a palavra breve,
          // de "Em breve", retorna null e não mostra a frase de destaque
          return null;
        } else {
          // exibe a mensagem de destaque vindo da api, desde que não possua
          // a palabra breve, de "Em breve".
          return toShortcuts(context).spotlight;
        }
      } else {
        // retorna null pois não tem nenhuma palabra de destaque
        return null;
      }
    } else {
      // o aplicativo não pode acessar o módulo por ainda não atingir a versão
      // mínima que o módulo precisa pra começar a funcionar.
      if (toShortcuts(context).spotlight?.toLowerCase().contains('novo') ??
          false) {
        // É sugerido atualizar o aplicativo caso a palavra de destaque não
        // contenha breve, de "Em breve", e o aplicativo atual não consegue
        //rodar o módulo em questão.
        // Exemplo: Aplicativo na versão 2, módulo na versão 3 - escrito "Novo",
        // logo entende-se que exista uma atualização e já esteja liberado o
        // aplicativo na versão 3.
        return 'Atualizar';
      } else {
        if (toShortcuts(context).spotlight?.isNotEmpty ?? false) {
          // exibe a palavra de destaque vindo da api caso diferente de vazio.
          return toShortcuts(context).spotlight;
        } else {
          // retorna null caso não haja uma palavra vindo da api.
          return null;
        }
      }
    }
  }

  Widget getSpotlightWidget(context, {required ColorSystem color}) {
    final String? text = getSpotlightText(context);
    if (text != null) {
      return IgnorePointer(
        child: HighlightMessageCard(
          text: text,
          color: color,
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
