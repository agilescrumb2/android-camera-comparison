import 'dart:convert';
import 'package:android_camera_comparison/models/fullkit.dart';
import 'package:http/http.dart' as http;

class RemoteServiceFullkit {
  Future<List<Fullkit>?> getLensas() async {
    var client = http.Client();
    var uri = Uri.parse('https://cameris.my.id/api/fulkit');
    var response = await client.get(uri);
    if(response.statusCode == 200) {
      final jsonData = jsonDecode(response.body)['data'] as List<dynamic>;
      return jsonData.map((e) => Fullkit.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch data.');
    }
  }
}