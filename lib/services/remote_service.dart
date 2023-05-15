import 'package:android_camera_comparison/models/kamera.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Kamera>?> getKameras() async {
    var client = http.Client();
    var uri = Uri.parse('https://cameris.my.id/api/camera');
    var response = await client.get(uri);
    if(response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }
}
