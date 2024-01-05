import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../features/app/domain/entities/environment.dart';

class Production extends Environment {
  final String baseUrl = 'https://api.pjmei.app/v1/';
  final String apiKey = 'cPnjB7ffdpROsxB8jm2hygCqnGvF7FVBRUpqTE4s';
  final String apiKeyUrl = '?api_key=cPnjB7ffdpROsxB8jm2hygCqnGvF7FVBRUpqTE4s';
  final String apiKeyUrlQuery = '&api_key=cPnjB7ffdpROsxB8jm2hygCqnGvF7FVBRUpqTE4s';

  EnvironmentType environmentType = EnvironmentType.production;

}
