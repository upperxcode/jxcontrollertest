import 'package:flutter_test/flutter_test.dart';
import 'package:jxcontrollertest/domain/api/api.client.dart';
import 'package:jxcontrollertest/domain/usescases/api_estado.dart';

void main() {
  final api = ApiEstado(ApiClient.client());
  test('api ...', () async {
    final r = await api.getAll();
    expect(r.status, 200);
  });
}
