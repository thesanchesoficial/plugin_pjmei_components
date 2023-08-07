import 'package:plugin_pjmei_components/config/config.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

String getSupportIdByWhiteLabel() {
  if(Environment.current?.environmentType == EnvironmentType.development) {
    if(WhiteLabelApp.current?.sandbox != null) {
      return '${WhiteLabelApp.current?.sandbox?.idSupport}';
    } else {
      throw 'Unconfigured environment';
    }
  } else if(Environment.current?.environmentType == EnvironmentType.production) {
    if(WhiteLabelApp.current?.production != null) {
      return '${WhiteLabelApp.current?.production?.idSupport}';
    } else {
      throw 'Unconfigured environment';
    }
  }
  throw 'Environment not found';
}

String getEstablishmentIdByWhiteLabel() {
  if(Environment.current?.environmentType == EnvironmentType.development) {
    if(WhiteLabelApp.current?.sandbox != null) {
      return '${WhiteLabelApp.current?.sandbox?.establishmentId}';
    } else {
      throw 'Unconfigured environment';
    }
  } else if(Environment.current?.environmentType == EnvironmentType.production) {
    if(WhiteLabelApp.current?.production != null) {
      return '${WhiteLabelApp.current?.production?.establishmentId}';
    } else {
      throw 'Unconfigured environment';
    }
  }
  throw 'Environment not found';
}

String getCompanyIdByWhiteLabel() {
  if(Environment.current?.environmentType == EnvironmentType.development) {
    if(WhiteLabelApp.current?.sandbox != null) {
      return '${WhiteLabelApp.current?.sandbox?.companyId}';
    } else {
      throw 'Unconfigured environment';
    }
  } else if(Environment.current?.environmentType == EnvironmentType.production) {
    if(WhiteLabelApp.current?.production != null) {
      return '${WhiteLabelApp.current?.production?.companyId}';
    } else {
      throw 'Unconfigured environment';
    }
  }
  throw 'Environment not found';
}