import 'package:jxcontroller/jxcontroller.dart';

import '../api/endpoints.dart';

class ApiPais extends ApiHttp {
  //

  HttpServices endpoint = Endpoints.pais;

  ApiPais(super.client);

  Future<dynamic> getAll() async {
    return await get(endpoint.getAll);
  }
}
