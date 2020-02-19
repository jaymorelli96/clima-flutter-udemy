import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future<Map> getData() async {
    http.Response resp = await http.get(url);
    if (resp.statusCode == 200) {
      String data = resp.body;
      return jsonDecode(data);
    } else
      print("Something went wrong, status code != 400");
  }
}
