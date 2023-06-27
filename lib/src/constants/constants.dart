/// Holds the constants
class Constants {
  static String v1 = Endpoint.v1.value;
}

/// Defines the staging and production endpoints
enum Endpoint {
  v1('https://api.yearn.finance/v1/chains/1/vaults/all');

  const Endpoint(this.value);

  final String value;
}
