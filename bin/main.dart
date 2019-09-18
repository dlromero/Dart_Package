import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:packages/classes/request_response.dart';

import 'package:packages/packages.dart' as packages;

main(List<String> arguments) {
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
