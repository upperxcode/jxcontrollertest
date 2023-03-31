import 'package:jxcontroller/jxcontroller.dart';

import '../domain/models/cidade_model.dart';
import '../domain/usescases/api_cidade.dart';

class CidadeController extends BaseController {
//

  // ignore: unused_field
  final JxHttpClient _client;
  CidadeController(this._client) : super(ApiCidade(_client));

  @override
  Future<void> refresh() async {
    state = HomeState.loading;
    try {
      final response = await (repository as ApiCidade).getAll();
      items =
          (response.data as List).map((e) => CidadeModel.fromJson(e)).toList();
      state = HomeState.success;
    } catch (e) {
      state = HomeState.error;
      throw Exception('Erro ao acessar a api Cidade');
      //errorMessage = repository.erroMessage ?? '';
    }
    notifyListeners();
  }
  //errorMessage = repository.erroMessage ?? '';state = HomeState.error;state = HomeState.error;
}
