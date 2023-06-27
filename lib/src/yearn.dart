import 'config/config.dart';
import 'endpoints/v1_endpoint.dart';
import 'objects/response/response.dart';

class Yearn {
  final Config config;

  /// Initialize a connection to the API endpoint
  late final V1Endpoint api;

  /// Initialize the main object with desired configs
  Yearn(this.config) {
    api = V1Endpoint(config);
  }

  /// Get information of all vaults
  Future<ApiResponse> getVaults() async {
    return api.getVaults();
  }

  /// Get information of all vaults
  void close() {
    api.close();
  }
}
