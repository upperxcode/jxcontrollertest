import 'package:jxcontroller/jxcontroller.dart';

import '../api/endpoints.dart';

class ApiDcb extends ApiHttp {
  //

  HttpServices endpoint = Endpoints.dcb;

  ApiDcb(super.client);

  Future<dynamic> getAll() async {
    return await get(endpoint.getAll);
  }
}
