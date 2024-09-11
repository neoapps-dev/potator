// ignore_for_file: avoid_print

library potator;

import 'package:http/http.dart' as http;

class Potator {
  String serverUrl =
      'https://potatoes-backend.vercel.app'; // MUSTN'T END WITH A SLASH

  void use(String url) {
    serverUrl = url;
  }

  Future<String> get(String url) async {
    final response = await http.get(Uri.parse("$serverUrl/$url"));
    if (response.statusCode == 200) {
      print('POTATOR: GET request to $url successful');
      return response.body;
    } else {
      print(
          'POTAOR: GET request to $url failed with status ${response.statusCode}');
      return response.body;
    }
  }
}
