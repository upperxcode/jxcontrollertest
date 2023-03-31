//readonly=false
import 'package:jxcontroller/jxcontroller.dart';
import 'package:jxcontrollertest/domain/models/empresa.model.dart';
import '../domain/usescases/empresa.api.dart';

class EmpresaController extends BaseController {
  // ignore: unused_field
  final JxHttpClient _client;
  EmpresaController(this._client) : super(ApiEmpresa(_client));

  @override
  Future<void> refresh() async {
    state = HomeState.loading;
    dynamic response;
    notifyListeners();
    try {
      response = await (repository as ApiEmpresa).getAll();
      await Future.delayed(const Duration(seconds: 1));
      items =
          (response.data as List).map((e) => EmpresaModel.fromJson(e)).toList();
      state = HomeState.success;
    } catch (e) {
      final endpoint = (repository as ApiEmpresa).endpoint.getAll;
      errorMessage = 'Erro ao acessar a api Empresa: $endpoint';
      state = HomeState.error;
      notifyListeners();

      throw Exception('Erro ao acessar a api Empresa: $errorMessage');
    }

    notifyListeners();
  }

  Future<List<JxModel>>? forceData() async {
    await refresh();
    return items;
  }
}
