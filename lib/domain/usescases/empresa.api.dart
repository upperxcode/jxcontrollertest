//readonly=false
import 'package:jxcontroller/jxcontroller.dart';
import '../api/endpoints.dart';

class ApiEmpresa extends ApiHttp {

HttpServices endpoint = Endpoints.empresa;
ApiEmpresa(super.client);
Future<dynamic> getAll() async {
return await get(endpoint.getAll);
}
}
