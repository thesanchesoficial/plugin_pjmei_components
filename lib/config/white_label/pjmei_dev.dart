import '../../features/white_label/domain/entity/environment_white_label_entity.dart';
import '../../features/white_label/domain/entity/functionality_white_label_entity.dart';
import '../../features/white_label/domain/entity/image_white_label_entity.dart';
import '../../features/white_label/domain/entity/item_environment_white_label_entity.dart';
import '../../features/white_label/domain/entity/link_white_label_entity.dart';
import '../../features/white_label/domain/entity/setting_white_label_entity.dart';
import '../../features/white_label/domain/entity/style_white_label_entity.dart';
import '../../features/white_label/domain/entity/white_label_entity.dart';

WhiteLabelEntity pjmeiDev = WhiteLabelEntity(
  name: 'PJMEI',
  description: 'Ser PJMEI é juntar soluções desde a abertura da empresa, montar sua própria loja virtual, gestão do negócio e finanças, educação financeira, recebíveis, contabilidade, pagamento online e muito mais.',
  id: '8653819c-2072-4a5a-91fe-25166883d0c7',
  setting: SettingWhiteLabelEntity(
    companyId: 'd286430b-83cf-4057-8f11-4204411f8b48',
    ecommerceId: 'a5dd8021-8285-431f-97f1-85e1234a8e0a',
    disabledPrintScreen: false,
    forceAuthenticationStart: false,
    planRequired: true,
    redirectOrigin: 'https://dev.pjmei.app',
    urlWebApplication: 'https://dev.pjmei.app',
    linkAppleStore: 'https://apps.apple.com/br/app/pjmei-loja-online-e-gest%C3%A3o/id1554746008',
    linkGooglePlay: 'https://play.google.com/store/apps/details?id=com.dsanches.marketplace.marketplace_lojista',
    link: LinkWhiteLabelEntity(
      termsOfUse: 'https://www.pjmei.app/termos-de-uso',
      privacyPolicy: 'https://www.pjmei.app/politica-de-privacidade',
      lgpd: 'https://www.pjmei.app/lgpd',
      website: 'https://www.pjmei.app',
    ),
    environment: EnvironmentWhiteLabelEntity(
      individual: ItemEnvironmentWhiteLabelEntity(
        enabled: true,
        limit: 1,
      ),
      company: ItemEnvironmentWhiteLabelEntity(
        enabled: true,
        limit: 10,
      ),
    ),
    functionality: FunctionalityWhiteLabelEntity(
      companies: true,
      financialEducation: true,
      groups: true,
      inbox: true,
      knowledgeBase: true,
      master: true,
      modules: true,
      notifications: true,
      plans: true,
      users: true,
      ecommerce: true,
    ),
  ),
  style: StyleWhiteLabelEntity(
    lightColorScheme: '',
    darkColorScheme: '',
    image: ImageWhiteLabelEntity(
      favicon: 'assets/white_label/icon/icon.png',
      icon: 'assets/white_label/icon/icon.png',
      logoMenuMobile: 'assets/white_label/splash/splash.png',
      logoMenuWeb: 'assets/white_label/splash/splash.png',
      logoSplash: 'assets/white_label/splash/splash.png',
    ),
  ),
  validations: [],
);