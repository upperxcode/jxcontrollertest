import 'package:flutter_test/flutter_test.dart';
import 'package:jxcontrollertest/domain/api/api.client.dart';
import 'package:jxcontrollertest/domain/usescases/api_pais.dart';

void main() {
  final api = ApiPais(ApiClient.client());
  test('api ...', () async {
    final r = await api.getAll();
    expect(r.status, 200);
  });
}
