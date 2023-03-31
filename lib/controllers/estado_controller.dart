import 'package:jxcontroller/domain/core/jx.fields.dart';
import 'package:jxcontroller/jxcontroller.dart';

import '../domain/data/estados.dart' as data;
import '../domain/models/estado_model.dart';
import '../domain/usescases/api_estado.dart';

class EstadoController extends BaseController {
//
  // ignore: unused_field
  final JxHttpClient _client;
  EstadoController(this._client) : super(ApiEstado(_client)) {
    model = EstadoModel.staticFields;
  }

  @override
  Future<void> refresh() async {
    state = HomeState.loading;
    clear();
    try {
      //final response = await (repository as ApiEstado).getAll();
      const response = data.estados;
      items = (response).map((e) => EstadoModel.fromJson(e)).toList();
      state = HomeState.success;
    } catch (e) {
      state = HomeState.error;
      throw Exception('Erro ao acessar a api Estado');
      //errorMessage = repository.erroMessage ?? '';
    }

    notifyListeners();
  }
}
