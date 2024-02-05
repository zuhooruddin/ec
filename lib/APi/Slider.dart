import 'package:devkitflutter/config/constant.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/home_banner_model.dart';

class SliderApi {
  Future<List<MySlider>> fetchslider() async {
    http.Response response;

    response = await http
        .get(Uri.parse(GLOBAL_URL+"getsliderimage"));
    if (response.statusCode == 200) {
      final List<dynamic> jsonalbum = json.decode(response.body);
      return jsonalbum.map((e) => MySlider.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}