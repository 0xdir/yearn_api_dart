import '../vault.dart';

/// Response from the API.
class ApiResponse {
  int statusCode;
  List<dynamic> body;
  List<Vault> results = [];

  ApiResponse(this.statusCode, this.body) {
    for (var vault in body) {
      results.add(Vault.fromJson(vault));
    }
  }
}
