import 'package:flutter_test/flutter_test.dart';
import 'package:jxcontrollertest/controllers/estado_controller.dart';
import 'package:jxcontrollertest/domain/api/api.client.dart';
import 'package:jxcontrollertest/domain/usescases/api_estado.dart';

//class EstadoRepositoryMock extends Mock implements EstadoRepository {}
//class BaseRepositoryMock extends Mock implements BaseRepository {}

void main() {
  test('deve preencher a lista corretamente', () async {
    final controller = EstadoController(ApiClient.client());

    //  when(() => repository.get(EstadoModel.fromJson)).thenAnswer((_) async => jsonDecode(jsonResponse));
    //await repository.get((p0) => EstadoModel.fromJson);
    final response = await (controller.repository as ApiEstado).getAll();

    //final d = EstadoModel.fromJson(response.data[0]);
    //******final lista = (response.data as List).map((e) => EstadoModel.fromJson(e)).toList();
    //print(lista);

    //List<EstadoModel> list = List<EstadoModel>.from(response.data);
    //final data = (jsonDecode(response.data) as List).map(((e) => EstadoModel.fromJson(e))).toList();

    // final list = (jsonDecode(jsonResponse) as List).map(((e) => EstadoModel.fromJson(e))).toList();

    //print(d);
    await controller.refresh();
    //final items = controller.items;
    expect(response.status, 200);
    //expect(items.length, 1);
  });
}
