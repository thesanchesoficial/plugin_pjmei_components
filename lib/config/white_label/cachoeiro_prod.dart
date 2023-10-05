import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

WhiteLabelEntity cachoeiroProd = WhiteLabelEntity(
  name: 'Cachoeiro Empreendedor',
  description: '',
  id: '75673bcb-5599-4a88-ad26-3f434b28a713',
  setting: SettingWhiteLabelEntity(
    companyId: '4e5f5e16-fd62-4f36-9c1a-1323ce9599ee',
    ecommerceId: 'a5dd8021-8285-431f-97f1-85e1234a8e0a',
    disabledPrintScreen: false,
    forceAuthenticationStart: false,
    redirectOrigin: 'https://www.cachoeiro.es.gov.br/',
    urlWebApplication: 'https://empreendedor.cachoeiro.es.gov.br/',
    link: LinkWhiteLabelEntity(
      termsOfUse: 'https://www.pjmei.app/termos-de-uso',
      privacyPolicy: 'https://www.pjmei.app/politica-de-privacidade',
      lgpd: 'https://www.pjmei.app/lgpd',
      website: 'https://www.cachoeiro.es.gov.br/',
    ),
    environment: EnvironmentWhiteLabelEntity(
      individual: ItemEnvironmentWhiteLabelEntity(
        enabled: false,
        limit: 1,
      ),
      company: ItemEnvironmentWhiteLabelEntity(
        enabled: true,
        limit: 1,
      ),
    ),
    functionality: FunctionalityWhiteLabelEntity(
      companies: true,
      financialEducation: true,
      groups: false,
      inbox: true,
      knowledgeBase: true,
      master: false,
      modules: true,
      notifications: true,
      plans: false,
      users: true,
      ecommerce: true,
    ),
  ),
  style: StyleWhiteLabelEntity(
    lightColorScheme: '019CDE',
    darkColorScheme: '019CDE',
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