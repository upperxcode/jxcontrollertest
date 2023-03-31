import 'package:jxcontroller/jxcontroller.dart';
import 'package:jxcontrollertest/domain/models/pais_model.dart';

import '../domain/usescases/api_pais.dart';

class PaisController extends BaseController {
//

  // ignore: unused_field
  final JxHttpClient _client;
  PaisController(this._client) : super(ApiPais(_client));

  @override
  Future<void> refresh() async {
    state = HomeState.loading;
    try {
      final response = await (repository as ApiPais).getAll();
      items =
          (response.data as List).map((e) => PaisModel.fromJson(e)).toList();
      state = HomeState.success;
    } catch (e) {
      errorMessage = repository.errorMessage ?? '';
      state = HomeState.error;
      throw Exception('Erro ao acessar a api Pais: $errorMessage');
    }

    notifyListeners();
  }
}
