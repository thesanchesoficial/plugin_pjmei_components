import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

WhiteLabelEntity serraDev = WhiteLabelEntity(
  name: 'Serra Digital',
  description: '',
  id: 'ca6fd5b4-ff0a-40e7-97c4-4d438ceeb967',
  setting: SettingWhiteLabelEntity(
    companyId: '0e2cee1f-306e-49b4-bc5d-bea2e624a31b',
    supportId: 'SUPPORT1-SAND-0000-0000-00CIAMPESERRA',
    disabledPrintscreen: false,
    forceAuthenticationStart: false,
    redirectOrigin: 'https://dev.pjmei.app',
    urlWebApplication: 'https://dev.pjmei.app',
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
      groups: false,
      inbox: true,
      knowledgeBase: true,
      master: false,
      modules: true,
      notifications: true,
      plans: false,
      users: true,
    ),
  ),
  style: StyleWhiteLabelEntity(
    lightColorScheme: '',
    darkColorScheme: '',
    image: ImageWhiteLabelEntity(
      favicon: 'assets/images/logo-pjmei.png',
      icon: 'assets/images/logo-pjmei.png',
      logoMenuMobile: 'assets/images/logo-pjmei.png',
      logoMenuWeb: 'assets/images/logo-pjmei.png',
      logoSplash: 'assets/images/logo-pjmei.png',
    ),
  ),
  validations: [],
);