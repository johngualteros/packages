import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:packages/classes/country.dart';

import 'package:packages/classes/req_response.dart';

void getRequestResponseService() async {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  final response = await http.get(url);
  print(response.body.runtimeType);
  final reqResp = reqResFromJson(response.body);

  // final body = jsonDecode(response.body);
  // print('body : ${body}');
  print('page ${reqResp.page}');
  print('per_page: ${reqResp.perPage}');
  print('id of third element ${reqResp.data[2].id}');
}

void getCountryService() async {
  final url = Uri.parse('https://restcountries.com/v3.1/alpha?codes=col');
  final response = await http.get(url);
  // print(response.body[0]);
  final jsonresponse = json.decode(response.body);
  final encodeResponse = json.encode(jsonresponse[0]);
  final col = countryFromJson(encodeResponse);

  // print(jsonresponse[0].runtimeType);
  print(encodeResponse.runtimeType);

  print('=====================');
  print('country: ${col.name.common}');
  print('poblation: ${col.population}');
  print('borders: ${col.borders}');

  for (var element in col.borders) {
    print('border: $element');
  }
  print('latitude: ${col.latlng[0]}');
  print('longitude: ${col.latlng[1]}');
  print('currency: ${col.currencies.cop.name}');
  print('flag: ${col.flags.png}');
  print('=====================');
}
