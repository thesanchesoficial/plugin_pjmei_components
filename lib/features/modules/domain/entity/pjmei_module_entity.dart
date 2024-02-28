import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:url_launcher/url_launcher.dart';

class ModulePjmei {
  String? id;
  String? title;
  String whiteLabel;
  String? description;
  String displayType;
  int index;
  Map<String, String>? image;
  String? route;
  String? spotlight;
  int minimalVersion;
  int? maximalVersion;
  String typeScreen;
  String? createdAt;
  String? updatedAt;
  Map? params;
  List<String>? hideOnPlans;
  List<String>? activeOnPlans;
  List<String>? groups;

  ModulePjmei({
    this.id,
    this.title,
    required this.whiteLabel,
    this.description,
    required this.displayType,
    this.index = 0,
    this.image,
    this.route,
    this.spotlight,
    this.minimalVersion = 0,
    this.maximalVersion,
    this.typeScreen = '',
    this.params,
    this.createdAt,
    this.updatedAt,
    this.hideOnPlans,
    this.activeOnPlans,
    this.groups,
  });


  factory ModulePjmei.fromMap(Map<String, dynamic> map, {bool backoffice = false}) {
    final int minimalVersion = map['minimalVersion'] ?? 0;
    final int maximalVersion = map['maximalVersion'] ?? 9999999999;

    final Map<String, dynamic> params = Map<String, dynamic>.from(map['params'] ?? {});
    final bool isWeb = params['isWeb'] ?? true;
    final bool isAndroid = params['isAndroid'] ?? true;
    final bool isIos = params['isIos'] ?? true;
    final bool smallScreen = params['smallScreen'] ?? true;
    final bool largeScreen = params['largeScreen'] ?? true;

    if (minimalVersion > minimalVersion || maximalVersion <minimalVersion) {
      return ModulePjmei(
        displayType: 'DEVELOPMENT',
        title: '-',
        index: 999,
        params: {},
        whiteLabel: '${WhiteLabelEntity.current?.id}',
      );
    }

    if (kIsWeb) {
      if (!isWeb && !backoffice) {
        return ModulePjmei(
          displayType: 'DEVELOPMENT',
          title: '-',
          index: 999,
          params: {},
          whiteLabel: '${WhiteLabelEntity.current?.id}',
        );
      }
    } else {
      if (Platform.isAndroid && !isAndroid && !backoffice) {
        return ModulePjmei(
          displayType: 'DEVELOPMENT',
          title: '-',
          index: 999,
          params: {},
          whiteLabel: '${WhiteLabelEntity.current?.id}',
        );
      } else if (Platform.isIOS && !isIos && !backoffice) {
        return ModulePjmei(
          displayType: 'DEVELOPMENT',
          title: '-',
          index: 999,
          params: {},
          whiteLabel: '${WhiteLabelEntity.current?.id}',
        );
      }
    }

    if (appSM.isWeb) {
      if (!largeScreen && !backoffice) {
        return ModulePjmei(
          displayType: 'DEVELOPMENT',
          title: '-',
          index: 999,
          params: {},
          whiteLabel: '${WhiteLabelEntity.current?.id}',
        );
      }
    } else {
      if (!smallScreen && !backoffice) {
        return ModulePjmei(
          displayType: 'DEVELOPMENT',
          title: '-',
          index: 999,
          params: {},
          whiteLabel: '${WhiteLabelEntity.current?.id}',
        );
      }
    }

    final Map<String, dynamic> paramsDynamic = {
      '#moduleId': map['id'],
    };
    
    return ModulePjmei(
      id: map['id'] ?? '',
      title: convertString(map['title'], additionals: paramsDynamic),
      description: convertString(map['description'], additionals: paramsDynamic),
      displayType: map['displayType'] ?? '',
      index: map['index'] ?? 900,
      image: map['image'] == null ? {} : Map<String, String>.from(map['image']),
      route: convertString(map['route'], additionals: paramsDynamic),
      spotlight: map['spotlight'] ?? '',
      minimalVersion: map['minimalVersion'] ?? 0,
      params: params,
      whiteLabel: map['whiteLabel'],
      maximalVersion: map['maximal_version'] == null ? map['maximalVersion']?.toInt() : map['maximal_version']?.toInt() ?? 999999999,
      typeScreen: (map['typeScreen'] ?? map['type_screen'] ?? '').toString(),
      hideOnPlans: map['hideOnPlans'] == null ? [] : List<String>.from(map['hideOnPlans']),
      activeOnPlans: map['activeOnPlans'] == null ? [] : List<String>.from(map['activeOnPlans']),
      groups: map['groups'] == null ? [] : List<String>.from(map['groups']),
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
    );
  }

  factory ModulePjmei.fromJson(String source) => ModulePjmei.fromMap(json.decode(source));

  ModulePjmei copyWith({
    String? id,
    String? title,
    String? description,
    String? displayType,
    int? index,
    Map<String, String>? image,
    String? route,
    String? spotlight,
    int? minimalVersion,
    Map<String, dynamic>? params,
    String? whiteLabel,
    int? maximalVersion,
    String? typeScreen,
    String? createdAt,
    String? updatedAt,
    List<String>? hideOnPlans,
    List<String>? activeOnPlans,
    List<String>? groups,
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
      minimalVersion: minimalVersion ?? this.minimalVersion,
      params: params ?? this.params,
      whiteLabel: whiteLabel ?? this.whiteLabel,
      typeScreen: typeScreen ?? this.typeScreen,
      activeOnPlans: activeOnPlans ?? this.activeOnPlans,
      groups: groups ?? this.groups,
      hideOnPlans: hideOnPlans ?? this.hideOnPlans,
      maximalVersion: maximalVersion ?? this.maximalVersion,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
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
      'whiteLabel': whiteLabel,
      'spotlight': spotlight,
      'minimalVersion': minimalVersion,
      'params': params,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'ModulePjmei(id: $id, title: $title, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, displayType: $displayType, index: $index, image: $image, params: $params, route: $route, spotlight: $spotlight, minimalVersion: $minimalVersion)';
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
        other.whiteLabel == whiteLabel &&
        mapEquals(other.image, image) &&
        mapEquals(other.params, params) &&
        other.route == route &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.spotlight == spotlight;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        displayType.hashCode ^
        index.hashCode ^
        whiteLabel.hashCode ^
        image.hashCode ^
        params.hashCode ^
        route.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        spotlight.hashCode;
  }

  ShortcutsEntity toShortcuts(context, {bool color = false, Color? iconColor}) {
    Widget child;
    final String type = '${image?['type']}';
    switch (type) {
      case 'ASSET':
        child = Image.asset(
          '${image?['value']}',
          width: 30,
          height: 30,
          color: iconColor,
        );
        break;
      case 'NETWORK':
        child = Image.network(
          '${image?['value']}',
          width: 30,
          height: 30,
          color: iconColor,
        );
        break;
      case 'ICON':
        child = Icon(
          IconAdapter.getIcon('${image?['value']}',),
          size: 22,
          color: iconColor ?? (color || params?['iconColor'] == true
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

  Widget? getResource({Color? color}) {
    Widget? child;

    if((image?.containsKey('type') ?? false) && (image?.containsKey('value') ?? false)) {
      final String type = '${image?['type']}';
      switch (type) {
        case 'ASSET':
          child = Image.asset(
            '${image?['value']}',
            fit: BoxFit.cover,
            color: color,
          );
          break;
        case 'NETWORK':
          child = Image.network(
            '${image?['value']}',
            fit: BoxFit.cover,
            color: color,
          );
          break;
        case 'ICON':
          child = Icon(
            IconAdapter.getIcon('${image?['value']}',),
            size: 30,
            color: color,
          );
          break;
        }
    }
    return child;
  }

  Widget? getIcon({Color? color, double? size = 30}) {
    Widget? child;

    if((image?['type'] == 'ICON') && (image?.containsKey('value') ?? false)) {
      child = Icon(
        IconAdapter.getIcon('${image?['value']}',),
        size: size,
        color: color,
      );
    }
    return child;
  }

  Widget? getImage({Color? color, double? size = 30}) {
    Widget? child;

    if((image?['type'] != 'ICON') && (image?.containsKey('value') ?? false)) {
      final String type = '${image?['type']}';
      switch (type) {
        case 'ASSET':
          child = Image.asset(
            '${image?['value']}',
            fit: BoxFit.cover,
            color: color,
          );
          break;
        case 'NETWORK':
          child = Image.network(
            '${image?['value']}',
            fit: BoxFit.cover,
            color: color,
          );
          break;
      }
    }
    return child;
  }

  DiscoverEntity toDiscover(context, {Color? color}) {
    Widget? child;
    if(Valid.text('${image?['value']}')) {
      final String type = '${image?['type']}';
      switch (type) {
        case 'ASSET':
          child = Image.asset(
            '${image?['value']}',
            fit: BoxFit.cover,
          );
          break;
        case 'NETWORK':
          child = Image.network(
            '${image?['value']}',
            fit: BoxFit.cover,
          );
          break;
        case 'ICON':
          child = Icon(
            IconAdapter.getIcon('${image?['value']}',),
            size: 22,
            color: color ?? Theme.of(context).iconTheme.color,
          );
          break;
        default:
          child = null;
      }
    }
    final DiscoverEntity discoverEntity = DiscoverEntity(
      image: child,
      title: title,
      description: description,
      label: params?['labelButton'],
      router: route,
      params: toMap(),
    );
    return discoverEntity;
  }


  String? getSpotlightText(context) {
    if ((minimalVersion) <= minimalVersion) {
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

  Future onTap(BuildContext context, [Widget? child, Function()? onPressed]) async {
    if (onPressed != null) {
      // entrou porque passou a funcao de onPressed
      onPressed();
    } else if (route == 'off' || route == '/off') {
      //
    } else {
      if (params?['isDynamicPage'] == true || route.toString().startsWith('/dynamic-page')) {
        if (params?['openLink'] == true) {
          context.push(
            '/p/$id',
            extra: this,
          );
        } else if (params?['openModal'] == true) {
          openModalPage(context, DynamicPage(this));
        } else {
          if(route != null) {
            route = convertStringAlls(route!, additionals: {
              '#moduleId': id,
              '#moduleName': title,
              '#moduleDescription': description,
              ':companyId': '${companySM.company?.id}',
              '#companyId': '${companySM.company?.id}',
              '#userId': '${userSM.user?.id}',
              ':userId': '${userSM.user?.id}',
              ':establishmentId': '${ecommerceSM.establishment?.id}',
              '#establishmentId': '${ecommerceSM.establishment?.id}',
            });
            context.push(route!, extra: this);
          }
        }
      } else if (params?['openModalSelectUserAccountWidget'] == true) {
        setModalSelectUserAccountWidget(context);
      } else if (params?['openModalSelectCompanieWidget'] == true) {
        setModalSelectCompanieWidget(context);
      } else if (params?['switchHideValueGlobal'] == true) {
        switchHideValueGlobal(context);
      } else {
        if (getSpotlightText(context) == 'Atualizar') {
          // entrou porque o aplicativo precisa ser atualizado para acessar o modulo
          context.push('/pending-update');
        } else if (getSpotlightText(context) == 'Manutenção') {
          // entrou porque o módulo está em manutenção
          context.push('/maintenance');
        } else {
          if (toShortcuts(context).onTap == null) {
            // entrou por nao possuir uma funcao especifica de clique
            if(route.toString() != "null") {
              route = convertStringAlls(route!, additionals: {
                '#moduleId': id,
                '#moduleName': title,
                '#moduleDescription': description,
                ':companyId': '${companySM.company?.id}',
                '#companyId': '${companySM.company?.id}',
                '#userId': '${userSM.user?.id}',
                ':userId': '${userSM.user?.id}',
                ':establishmentId': '${ecommerceSM.establishment?.id}',
                '#establishmentId': '${ecommerceSM.establishment?.id}',
              });
              // entrou por ter uma rota no modulo
              if (await canLaunchUrl(Uri.parse(route!))) {
                // entrou por causa da rota ser uma url válida
                if ((params?.containsKey('webview') ?? false) &&
                    params?['webview'] == true) {
                  // vai abrir o webview
                  context.push(
                    WebviewPage.route,
                    extra: WebviewParams(
                      url: route!,
                      title: title,
                    ),
                  );
                } else {
                  // vai abrir o navegador
                  launchUrl(
                    Uri.parse(route.toString()),
                    mode: LaunchMode.externalApplication,
                  );
                }
              } else {
                // entrou por ser uma rota dentro do aplicativo
                if ((minimalVersion) <= minimalVersion) {
                  // entrou porque o modulo roda na versão do aplicativo
                  if (child != null) {
                    // entrou porque passou o parametro child
                    if (params?['openLink'] == true) {
                      openLinkPage(
                        context,
                        OpenLinkPageParams.basic(child:
                            LayoutBuilder(builder: (context, constraints) {
                          return MediaQuery(
                            data: MediaQueryData(
                              padding: MediaQuery.viewPaddingOf(context),
                              size: Size(
                                constraints.maxWidth,
                                constraints.maxHeight,
                              ),
                            ),
                            child: child,
                          );
                        })),
                      );
                    } else if (params?['openModal'] == true) {
                      openModalPage(context, child);
                    } else {
                      Navigator.push(context, RightToLeft(page: child));
                    }
                  } else {
                    // entrou porque não passou o parametro child
                    if (params?['loading'] == true) {
                      context.push(route!, extra: this);
                    } else {
                      context.push(route!, extra: params);
                    }
                  }
                } else {
                  // não executa nada porque o aplicativo não pode rodar o módulo,
                  // versão do módulo é incompatível com a versão do aplicativo.
                }
              }
            }
          } else {
            // entrou porque tem uma função de clique específica.
            toShortcuts(context).onTap!();
          }
        }
      }
    }
  }

  ColorSystem getColor(BuildContext context, {String defaultType = 'primary'}) {
    return ColorSystem(
      context: context,
      defaultType: defaultType,
      type: params?['styleWidget'],
    );
  }
}
