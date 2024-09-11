// ignore_for_file: avoid_print

library potator;

import 'package:http/http.dart' as http;

class Potator {
  String serverUrl;

  Potator([String url = 'https://potatoes-backend.vercel.app'])
      : serverUrl = url.endsWith('/') ? url.substring(0, url.length - 1) : url {
    if (url.endsWith('/')) {
      print('POTATOR: URL should not end with a slash, it was corrected.');
    }
  }

  void use(String url) {
    if (url.endsWith('/')) {
      print('POTATOR: URL must not end with a slash');
    } else {
      serverUrl = url;
    }
  }

  Future<String> get(String url) async {
    final response = await http.get(Uri.parse("$serverUrl/$url"));
    if (response.statusCode == 200) {
      print('POTATOR: GET request to $url successful');
      return response.body;
    } else {
      print(
          'POTATOR: GET request to $url failed with status ${response.statusCode}');
      return 'Error: ${response.statusCode}';
    }
  }
}
