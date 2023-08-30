import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

WhiteLabelEntity pjmeiProd = WhiteLabelEntity(
  name: 'PJMEI',
  description: '',
  id: '7408f412-ca74-47bb-ad02-5ef12de848bd',
  setting: SettingWhiteLabelEntity(
    companyId: 'f327226e-709b-4c6a-ab5e-5c4b25e551e1',
    supportId: 'SUPPORT1-0000-0000-0000-00000000PJMEI',
    disabledPrintscreen: false,
    forceAuthenticationStart: false,
    redirectOrigin: 'https://portal.pjmei.app',
    urlWebApplication: 'https://portal.pjmei.app',
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
  ),
  style: StyleWhiteLabelEntity(
    lightColorScheme: '',
    darkColorScheme: '',
    resource: ResourceWhiteLabelEntity(
      favicon: 'assets/images/logo-pjmei.png',
      icon: 'assets/images/logo-pjmei.png',
      logoMenuMobile: 'assets/images/logo-pjmei.png',
      logoMenuWeb: 'assets/images/logo-pjmei.png',
      logoSplash: 'assets/images/logo-pjmei.png',
    ),
  ),
  validations: [],
);