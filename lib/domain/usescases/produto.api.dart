//readonly=false
import 'package:jxcontroller/jxcontroller.dart';
import '../api/endpoints.dart';

class ApiProduto extends ApiHttp {

HttpServices endpoint = Endpoints.produto;
ApiProduto(super.client);
Future<dynamic> getAll() async {
return await get(endpoint.getAll);
}
}
