import 'package:devkitflutter/config/constant.dart';
import 'package:devkitflutter/model/home_trending_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class FeaturedApi {
  Future<List<Featured>> fetchfeatured() async {
    http.Response response;

    response = await http
        .get(Uri.parse(GLOBAL_URL+"getFearuredProduct?type=featured"));
    if (response.statusCode == 200) {
      final List<dynamic> jsonalbum = json.decode(response.body);
      return jsonalbum.map((e) => Featured.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
   Future<List<Featured>> fetchnew() async {
    http.Response response;

    response = await http
        .get(Uri.parse(GLOBAL_URL+"getFearuredProduct?type=new"));
    if (response.statusCode == 200) {
      final List<dynamic> jsonalbum = json.decode(response.body);
      return jsonalbum.map((e) => Featured.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
Future<List<Featured>> fetchrelated(String slug) async {
  http.Response response;

  final Map<String, dynamic> requestBody = {
    'slug': slug,
  };
print("Related items ${requestBody}");
  try {
    response = await http.post(
      Uri.parse(GLOBAL_URL+"getRelatedItems"),
      body: json.encode(requestBody),
      headers: {'Content-Type': 'application/json'},
    );
print("Related items ${response}");

    if (response.statusCode == 200) {
      final List<dynamic> jsonalbum = json.decode(response.body);
      print("Related slug $jsonalbum");
      return jsonalbum.map((e) => Featured.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    throw Exception('Failed to make the request: $e');
  }
}

}