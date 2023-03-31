import 'package:jxcontroller/jxcontroller.dart';

class Endpoints implements IEndpoints {
  factory Endpoints() => _this;
  Endpoints._();
  static final Endpoints _this = Endpoints._();

  // base url
  @override
  final String baseUrl = "https://bzjqraqvqfikzgtrwczh.supabase.co/rest/v1";

  // receiveTimeout
  @override
  final int receiveTimeout = 15000;

  // connectTimeout
  @override
  final int connectionTimeout = 15000;

  static HttpServices genero = const HttpServices(
    getAll: '/generos',
    getOne: '/genero/',
    getWhere: '/genero/filter',
    put: '',
    post: '',
    patch: '',
    delete: '',
  );

  static HttpServices estado = const HttpServices(
    getAll: '/get',
    getOne: '/estado/',
    getWhere: '/estado/filter',
    put: '',
    post: '',
    patch: '',
    delete: '',
  );
  static HttpServices pais = const HttpServices(
    getAll: '/paises',
    getOne: '/pais/',
    getWhere: '/pais/filter',
    put: '',
    post: '',
    patch: '',
    delete: '',
  );

  static HttpServices cidade = const HttpServices(
    getAll: '/cidades',
    getOne: '/cidade/',
    getWhere: '/cidade/filter',
    put: '',
    post: '',
    patch: '',
    delete: '',
  );

  static HttpServices dcb = const HttpServices(
    getAll: '/listaDCB',
    getOne: '/cidade/',
    getWhere: '/cidade/filter',
    put: '',
    post: '',
    patch: '',
    delete: '',
  );

  static HttpServices produto = const HttpServices(
    getAll: '/produtos',
    getOne: '/cidade/',
    getWhere: '/cidade/filter',
    put: '',
    post: '',
    patch: '',
    delete: '',
  );

  static HttpServices empresa = const HttpServices(
    getAll: '/Empresa',
    getOne: '/cidade/',
    getWhere: '/cidade/filter',
    put: '',
    post: '',
    patch: '',
    delete: '',
  );
}
