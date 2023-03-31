import 'package:jxcontroller/jxcontroller.dart';

import '../api/endpoints.dart';

class ApiCidade extends ApiHttp {
  //

  HttpServices endpoint = Endpoints.cidade;

  ApiCidade(super.client);

  Future<dynamic> getAll() async {
    return await get(endpoint.getAll);
  }
}
