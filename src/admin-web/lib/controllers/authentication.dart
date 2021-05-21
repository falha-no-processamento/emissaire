import 'dart:convert';

import 'package:emissaire_web/models/login_input.dart';
import 'package:http/http.dart' as http;

class AuthenticationController {
  LoginInput loginInput;

  Future<LoginInput> login(LoginInput loginInput) async {
    String url = 'https://minhaapi.com.br/auth';

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(loginInput.toJson()),
    );

    int statusCode = response.statusCode;

    if (statusCode == 200) {
      if (response.body != "[]") {
        var jsonResponse = jsonDecode(response.body);

        return loginInput = LoginInput.fromJson(jsonResponse);
      }
    }

    return null;
  }
}
