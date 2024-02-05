import 'package:devkitflutter/config/constant.dart';
import 'package:devkitflutter/model/flashsale_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class DiscountApi {
  Future<List<Discount>> fetchsale() async {
    http.Response response;

    response = await http
        .get(Uri.parse(GLOBAL_URL+"getDiscountedItems"));
    if (response.statusCode == 200) {
      final List<dynamic> jsonalbum = json.decode(response.body);
      return jsonalbum.map((e) => Discount.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}