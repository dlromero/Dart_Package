import 'package:http/http.dart' as http;
import 'classes/Country.dart';
import 'classes/request_response.dart';

void getReqResp_Service() {
  final url = 'https://reqres.in/api/users?page=2';
  http.get(url).then((resp) {
    final resReqRes = reqResFromJson(resp.body);

    // final body = jsonDecode(resp.body);

    // print('page: ${body['page']}');
    // print('per_page: ${body['per_page']}');
    // print('id del tercer element: ${body['data'][2]['id']}');

    print('page: ${resReqRes.page}');
    print('per_page: ${resReqRes.perPage}');
    print('id del tercer element: ${resReqRes.data[2].id}');
  });
}

// Tarea

void getCountry() {
  final url = 'https://restcountries.eu/rest/v2/alpha/col';
  http.get(url).then((resp) {
    final resReqRes = countryFromJson(resp.body);

    print('Pais: ${resReqRes.name}');
    print('Población: ${resReqRes.population}');
    print('Fronteras:');
    resReqRes.borders.forEach((f) => print('$f'));
    print('languages: ${resReqRes.languages[0].nativeName}');
    print('Latitud: ${resReqRes.latlng[0]}');
    print('Longitud: ${resReqRes.latlng[1]}');
    print('Moneda: ${resReqRes.currencies[0].name}');
    print('Bandera: ${resReqRes.flag}');
  });
}

reqResCountryFromJson(String body) {}
