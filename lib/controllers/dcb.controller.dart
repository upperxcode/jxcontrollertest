import 'package:jxcontroller/jxcontroller.dart';
import 'package:jxcontrollertest/domain/models/dcb.model.dart';

import '../domain/usescases/api.dcb.dart';

class DcbController extends BaseController {
//

  // ignore: unused_field
  final JxHttpClient _client;
  DcbController(this._client) : super(ApiDcb(_client));

  @override
  Future<void> refresh() async {
    state = HomeState.loading;
    try {
      final response = await (repository as ApiDcb).getAll();
      items = (response.data as List).map((e) => DcbModel.fromJson(e)).toList();
      state = HomeState.success;
    } catch (e) {
      errorMessage = repository.errorMessage ?? '';
      state = HomeState.error;
      throw Exception('Erro ao acessar a api Dcb: $errorMessage');
    }

    notifyListeners();
  }
}
