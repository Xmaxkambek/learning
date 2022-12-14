import 'dart:convert';
import 'package:http/http.dart' as http;

Future getData() async {
  Map<String, dynamic> queryParam = {'results': '50'};
  Uri url = Uri(
      scheme: 'https',
      host: 'randomuser.me',
      path: 'api/',
      queryParameters: queryParam);
  http.Response response = await http.get(url);
  Map dataFromJson = jsonDecode(response.body);
  return dataFromJson['results'];
}
