import '../../features/white_label/domain/entity/environment_white_label_entity.dart';
import '../../features/white_label/domain/entity/functionality_white_label_entity.dart';
import '../../features/white_label/domain/entity/image_white_label_entity.dart';
import '../../features/white_label/domain/entity/item_environment_white_label_entity.dart';
import '../../features/white_label/domain/entity/link_white_label_entity.dart';
import '../../features/white_label/domain/entity/setting_white_label_entity.dart';
import '../../features/white_label/domain/entity/style_white_label_entity.dart';
import '../../features/white_label/domain/entity/white_label_entity.dart';

WhiteLabelEntity serraProd = WhiteLabelEntity(
  name: 'Ciampe Serra Virtual',
  description: 'Com o intuito de diminuir a burocracia para a abertura de empresas, a Prefeitura da Serra possui o Centro Integrado de Apoio à Micro e Pequena Empresa (Ciampe). O objetivo é criar um ambiente de fomento aos novos negócios, com atendimento personalizado aos futuros empreendedores, além de agilizar as documentações para a regulamentação e gestão da sua empresa.',
  id: '2b688184-b0b8-4b6f-b726-dbfb269a8215',
  setting: SettingWhiteLabelEntity(
    companyId: '9d456812-6203-48dc-89cf-bcf88d502589',
    ecommerceId: '58a52819-1c7b-4b88-81ba-562282bc9e78',
    disabledPrintScreen: false,
    forceAuthenticationStart: false,
    redirectOrigin: 'http://serra.es.gov.br/',
    urlWebApplication: 'https://ciampe.serra.es.gov.br/',
    linkAppleStore: 'https://apps.apple.com/br/app/ciampe-serra-virtual/id6468666075',
    linkGooglePlay: 'https://play.google.com/store/apps/details?id=app.pjmei.gov.es.serra',
    link: LinkWhiteLabelEntity(
      termsOfUse: 'https://www.pjmei.app/termos-de-uso',
      privacyPolicy: 'https://www.pjmei.app/politica-de-privacidade',
      lgpd: 'https://www.pjmei.app/lgpd',
      website: 'http://serra.es.gov.br/',
    ),
    environment: EnvironmentWhiteLabelEntity(
      individual: ItemEnvironmentWhiteLabelEntity(
        enabled: true,
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
    lightColorScheme: '0059C8',
    darkColorScheme: '0059C8',
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