import '../objects/response/response.dart';
import 'base_endpoint.dart';
import '../connection/connection.dart';
import '../config/config.dart';

/// This is the V1 api endpoint
class V1Endpoint implements BaseEndpoint {
  @override
  Config config;
  @override
  late Connection connection;

  @override
  V1Endpoint(this.config) {
    connection = Connection(config);
  }

  /// Get information of all vaults
  Future<ApiResponse> getVaults() async {
    ApiResponse response = await connection.get();
    return response;
  }

  /// Close the connection
  void close() {
    connection.close();
  }
}
