import 'package:flutter_test/flutter_test.dart';
import 'package:jxcontroller/domain/api/clients/uno.client.dart';
import 'package:jxcontrollertest/domain/api/endpoints.dart';

void main() {
  final api = UnoClient(Endpoints(), {});
  test('api Faz a solicitação corretamente ...', () async {
    final result = await api.get(Endpoints.estado.getAll);
    expect(result.status, 200);
  });
}
