import 'dart:convert';
import 'package:android_camera_comparison/models/kamera.dart';
import 'package:http/http.dart' as http;

class RemoteServiceKamera {
  Future<List<Kamera>?> getKameras() async {
    var client = http.Client();
    var uri = Uri.parse('https://cameris.my.id/api/camera');
    var response = await client.get(uri);
    if(response.statusCode == 200) {
      final jsonData = jsonDecode(response.body)['data'] as List<dynamic>;
      return jsonData.map((e) => Kamera.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch data.');
    }
  }
}