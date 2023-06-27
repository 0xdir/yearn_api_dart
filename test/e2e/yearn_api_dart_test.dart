import 'package:yearn_api_dart/yearn_api_dart.dart';
import 'package:test/test.dart';

void main() async {
  test('Connection test', () async {
    Config config = Config(
      apiVersion: Constants.v1,
    );

    Yearn yearn = Yearn(config);

    ApiResponse response = await yearn.getVaults();

    expect(response.statusCode, 200);
  });
}
