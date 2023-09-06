import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper{
  NetworkHelper(this.url);
  final String url;
  Future getData() async {
    var url2 = Uri.parse(url);
    Response response = await get(url2);
    String data = response.body;
    var decodedData = jsonDecode(data);
    return decodedData;
  }
}