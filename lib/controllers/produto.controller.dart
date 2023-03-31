//readonly=true
import 'package:jxcontroller/jxcontroller.dart';
import 'package:jxcontrollertest/domain/models/produto.model.dart';
import '../domain/usescases/produto.api.dart';

class ProdutoController extends BaseController {
  // ignore: unused_field
  final JxHttpClient _client;
  ProdutoController(this._client) : super(ApiProduto(_client));

  @override
  Future<void> refresh() async {
    state = HomeState.loading;

    try {
      final response = await (repository as ApiProduto).getAll();
      items =
          (response.data as List).map((e) => ProdutoModel.fromJson(e)).toList();
      state = HomeState.success;
    } catch (e) {
      errorMessage = repository.errorMessage ?? '';
      state = HomeState.error;
      throw Exception('Erro ao acessar a api Produto: $errorMessage');
    }

    notifyListeners();
  }
}
