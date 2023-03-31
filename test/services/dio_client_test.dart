// import 'dart:convert';
// import 'package:cma/domain/models/pais_model.dart';
// import 'package:cma/domain/services/api/clients/http_client_interface.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';

// class IHttpClientMock extends Mock implements IHttpClient {}

// const url = 'http//localhost:3000/paises';

// void main() {
//   test('Verifica http client', () async {
//     final dio = IHttpClientMock();
//     when(() => dio.get(any())).thenAnswer((_) async => jsonDecode(jsonResponse));
//     final res = await dio.get('/paises');
//     final list = (res as List).map(((e) => PaisModel.fromJson(e))).toList();
//     expect(list[0].nome, 'Brazil');
//   });
// }

// const jsonResponse = '''
// [
// {"id":1,
//   "nome":"Brazil",
//   "nome_pt":"Brasil",
//   "sigla":"BR",
//   "bacen":1058,
//   "created_at":"2022-09-09T22:29:39.143057Z",
//   "updated_at":"2022-09-09T22:29:39.143057Z"
//   },
//   {"id":2,
//   "nome":"Afghanistan",
//   "nome_pt":"Afeganistão",
//   "sigla":"AF",
//   "bacen":132,
//   "created_at":"2022-09-09T22:29:39.143057Z",
//   "updated_at":"2022-09-09T22:29:39.143057Z"
//   }
//   ]
// ''';
