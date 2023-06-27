import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/config.dart';
import '../objects/response/response.dart';

/// Handles low-level calls to the api.
class Connection {
  Config config;
  late String baseUrl;
  late http.Client client;

  Connection(this.config) {
    baseUrl = config.apiVersion.toString();
    print(baseUrl);
    client = http.Client();
  }

  /// Get without params
  Future<ApiResponse> get() async {
    try {
      final response = await client.get(
        Uri.parse(baseUrl),
        headers: {},
      );

      if (response.statusCode != 200) {
        throw ('Server error: ${response.statusCode} - ${response.body}');
      }

      return ApiResponse(
        response.statusCode,
        jsonDecode(response.body) as List<dynamic>,
      );
    } catch (e) {
      rethrow;
    }
  }

  /// Close the client
  void close() {
    client.close();
  }
}
