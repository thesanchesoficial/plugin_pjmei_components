bool isFirstLoading = true;

enum EnvironmentType { DEVELOPMENT, STAGING, PRODUCTION, TESTING }

class Environment {

  Environment() {
    current = this;
  }
  static Environment? current;

  late String appName;
  late String url;
  late String baseUrl;
  late String apiKey;
  late String apiKeyUrl;
  late String apiKeyUrlQuery;
  late int minimalVersion;

  EnvironmentType environmentType = EnvironmentType.DEVELOPMENT;

}
