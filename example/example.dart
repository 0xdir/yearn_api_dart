import 'package:yearn_api_dart/yearn_api_dart.dart';

void main() async {
  /// Set up the config
  Config config = Config(
    apiVersion: Constants.v1,
  );

  /// Initialize the main object
  Yearn yearn = Yearn(config);

  /// Get all vaults
  ApiResponse response = await yearn.getVaults();

  /// Get the raw response
  // print(response.body);

  /// Get a list of Vault objects
  List<Vault> vaults = (response.results);
  for (Vault vault in vaults) {
    /// Apply filter conditions.
    ///
    /// Use null safety checks.
    if (vault.apy?.netAPY != null &&

        /// Filter for APY ranges
        vault.apy!.netAPY! < 100 &&
        vault.apy!.netAPY! > 0.1 &&

        /// Filter for endorsed vaults
        vault.endorsed == true) {
      /// Query the information with dot notation
      ///
      /// We assume all fields from the API could be null. So apply the
      /// null safety checks accordingly.
      print('${vault.displayName} - '
          'TVL: ${vault.tvl?.tvl} '
          'APY:${vault.apy?.netAPY} '
          'Token Symbol:${vault.token?.symbol}'
          'Token Address:${vault.token?.address}');
    }
  }

  /// Close the connection
  yearn.close();
}
