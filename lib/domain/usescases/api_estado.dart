

import 'package:jxcontroller/jxcontroller.dart';

import '../api/endpoints.dart';

class ApiEstado extends ApiHttp {
  //

  HttpServices endpoint = Endpoints.estado;

  ApiEstado(super.client);

  Future<dynamic> getAll() async {
    return await get(endpoint.getAll);
  }
}
