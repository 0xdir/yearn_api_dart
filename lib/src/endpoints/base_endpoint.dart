import '../connection/connection.dart';
import '../config/config.dart';

/// This is the base api endpoint
class BaseEndpoint {
  Config config;
  late Connection connection;

  BaseEndpoint(this.config) {
    connection = Connection(config);
  }
}
