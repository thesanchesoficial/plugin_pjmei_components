import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

WhiteLabelEntity pjmeiDev = WhiteLabelEntity(
  name: 'PJMEI',
  description: '',
  id: 'ff4e94d6-912d-4acf-b335-0736ca5a2882',
  setting: SettingWhiteLabelEntity(
    companyId: 'd286430b-83cf-4057-8f11-4204411f8b48',
    supportId: 'SUPPORT1-SAND-0000-0000-00000000PJMEI',
    disabledPrintScreen: false,
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
      groups: true,
      inbox: true,
      knowledgeBase: true,
      master: true,
      modules: true,
      notifications: true,
      plans: true,
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