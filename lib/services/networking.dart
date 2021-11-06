import 'dart:convert';

import 'package:http/http.dart';

class NetworkingHelper {
  String url;

  NetworkingHelper(this.url);

  Future<dynamic> getData() async {
    Uri uri = Uri.parse(url);
    Response response = await get(uri);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
