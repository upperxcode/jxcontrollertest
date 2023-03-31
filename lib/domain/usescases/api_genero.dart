import 'package:jxcontroller/jxcontroller.dart';

import '../api/endpoints.dart';

class ApiGenero extends ApiHttp {
  //

  HttpServices endpoint = Endpoints.genero;

  ApiGenero(super.client);

  Future<dynamic> getAll() async {
    return await get(endpoint.getAll);
  }
}
