class URLSessionConfiguration {
  URLSessionConfiguration(
    this.allowsCellularAccess,
    this.allowsConstrainedNetworkAccess,
    this.allowsExpensiveNetworkAccess,
  );

  factory URLSessionConfiguration.ephemeralSessionConfiguration() {
    return URLSessionConfiguration(true, true, true);
  }
  bool allowsCellularAccess;
  bool allowsConstrainedNetworkAccess;
  bool allowsExpensiveNetworkAccess;
}
