import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:jbmx_insomnia_flutter/core/values/enviroments.dart';

class LoginProvider extends ChangeNotifier {
  //Map<String, dynamic> token = {};
  String token = "";

  String get Token {
    return token;
  }

  set Token(String value) {
    token = value;
    notifyListeners();
  }

  LoginProvider() {
    this.getToken('jcarballido@sethemba.mx', 'Abcd1234');
  }
  getToken(String username, String password) async {
    final url = Uri.parse(Enviroments.GENERATE_TOKEN);
    final response = await http.post(url, body: {
      "grant_type": "password",
      "username": username,
      "password": password
    }, headers: {
      "Content-Type": "application/x-www-form-urlencoded",
      "Authorization": "Basic Y2xpZW50OnNlY3JldA=="
    });

    final Map<String, dynamic> Token = json.decode(response.body);
    this.token = Token['access_token'];

    //print(this.token);

    if (response.statusCode == 200) {
      return this.token;
    } else {
      throw Exception('Error de Autorization');
    }
  }
}
