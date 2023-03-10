import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  final String code;
  final String type;
  const User({required this.code, required this.type});
  factory User.fromJson(Map<String, dynamic> json) {
    return User(code: json['codigo'], type: json['tipo']);
  }
}

// Allows passing cookies between HTTP requests.
class Session {
  Map<String, String> _headers = {}; // stores the cookie

  // Posts data to a url and retrieves the deserialized JSON response.
  // Uses a previously retrieved cookie in the request header, if existent.
  // Saves the cookie retrieved in the response header, if provided.
  Future<dynamic> post(String url, dynamic data) async {
    var response = await http.post(Uri.parse(url), body: data, headers: _headers);
    if (response.statusCode == 200) {
      _updateCookie(response);
      return json.decode(response.body);
    }
    else {
      throw Exception('Failed to access $url');
    }
  }

  // Retrieves the (deserialized) JSON response from a url.
  // Uses a previously retrieved cookie in the request header, if existent.
  Future<dynamic> get(String url) async {
    var response = await http.get(Uri.parse(url), headers: _headers);
    if (response.statusCode == 200) {
      _updateCookie(response);
      return json.decode(response.body);
    }
    else {
      throw Exception('Failed to access $url');
    }
  }

  // Saves in "headers" the cookie retrieved in the response header.
  void _updateCookie(http.Response response) {
    String? rawCookie = response.headers['set-cookie'];
    if (rawCookie != null) {
      var sanitizedCookie = rawCookie.replaceAll(",", ";"); //needed with SIGARRA
      _headers['cookie'] = sanitizedCookie;
    }
  }
}