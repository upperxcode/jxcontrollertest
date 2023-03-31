import 'package:jxcontroller/jxcontroller.dart';
import 'package:jxcontrollertest/domain/models/genero_model.dart';

import '../domain/usescases/api_genero.dart';

class GeneroController extends BaseController {
//

  // ignore: unused_field
  final JxHttpClient _client;
  GeneroController(this._client) : super(ApiGenero(_client));

  @override
  Future<void> refresh() async {
    state = HomeState.loading;
    super.clear();

    try {
      final response = await (repository as ApiGenero).getAll();
      items =
          (response.data as List).map((e) => GeneroModel.fromJson(e)).toList();
      state = HomeState.success;
    } catch (e) {
      errorMessage = repository.errorMessage ?? '';
      state = HomeState.error;
      throw Exception('Erro ao acessar a api Gênero: $errorMessage');
    }

    notifyListeners();
  }
}
