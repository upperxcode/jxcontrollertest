import 'package:flutter_test/flutter_test.dart';
import 'package:jxcontrollertest/controllers/cidade_controller.dart';
import 'package:jxcontrollertest/domain/api/api.client.dart';
import 'package:jxcontrollertest/domain/usescases/api_cidade.dart';

//class EstadoRepositoryMock extends Mock implements EstadoRepository {}
//class BaseRepositoryMock extends Mock implements BaseRepository {}

void main() {
  test('deve preencher a lista corretamente', () async {
    final controller = CidadeController(ApiClient.client());
    final response = await (controller.repository as ApiCidade).getAll();
    await controller.refresh();
    expect(response.satus, 200);
    //expect(controller.fieldByName('nome'), )
    //print(controller.fieldByName('nome'));
  });
}
