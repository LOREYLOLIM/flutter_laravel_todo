import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

const String baseUrl = 'http://127.0.0.1:8000/api/';

class BaseClient {
  var client = http.Client();

  // GET
  Future<dynamic> store(String api, String object) async {
    var url = Uri.parse(baseUrl + api);
    Map<String, dynamic> _payload = {"post_name": object};
    // json.encode(object);

    var response = await client.post(url, body: _payload);
    if (response.statusCode == 201) {
      return response.body;
    } else {
      //throw exception and catch it in UI
    }
  }

//  Future<dynamic> get(String api) async{}
}
