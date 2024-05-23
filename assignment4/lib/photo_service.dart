import 'dart:convert';
import 'package:http/http.dart' as http;
import 'photo_model.dart';

class PhotoService {
  static const String url = 'https://jsonplaceholder.typicode.com/photos';

  static Future<List<Photo>> fetchPhotos() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Photo> photos = body.map((dynamic item) => Photo.fromJson(item)).toList();
      return photos;
    } else {
      throw Exception('Failed to load photos');
    }
  }
}
