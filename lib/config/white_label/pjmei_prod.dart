import '../../features/white_label/domain/entity/environment_white_label_entity.dart';
import '../../features/white_label/domain/entity/functionality_white_label_entity.dart';
import '../../features/white_label/domain/entity/image_white_label_entity.dart';
import '../../features/white_label/domain/entity/item_environment_white_label_entity.dart';
import '../../features/white_label/domain/entity/link_white_label_entity.dart';
import '../../features/white_label/domain/entity/setting_white_label_entity.dart';
import '../../features/white_label/domain/entity/style_white_label_entity.dart';
import '../../features/white_label/domain/entity/white_label_entity.dart';

WhiteLabelEntity pjmeiProd = WhiteLabelEntity(
  name: 'PJMEI',
  description: 'Ser PJMEI é juntar soluções desde a abertura da empresa, montar sua própria loja virtual, gestão do negócio e finanças, educação financeira, recebíveis, contabilidade, pagamento online e muito mais.',
  id: '8653819c-2072-4a5a-91fe-25166883d0c7',
  setting: SettingWhiteLabelEntity(
    companyId: '936900bf-28e0-4445-8932-310b94d19f7a',
    ecommerceId: '9dd3f999-0453-44df-b254-96192075137c',
    disabledPrintScreen: false,
    forceAuthenticationStart: false,
    planRequired: true,
    redirectOrigin: 'https://portal.pjmei.app',
    urlWebApplication: 'https://portal.pjmei.app',
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