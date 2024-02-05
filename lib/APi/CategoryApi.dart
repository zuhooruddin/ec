import 'package:devkitflutter/config/constant.dart';
import 'package:devkitflutter/model/category_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/home_banner_model.dart';
class CategoryApi {
  Future<List<MyCategory>> fetchcategory() async {
    http.Response response;

    response = await http.get(Uri.parse(GLOBAL_URL + "getAllCategories"));

    if (response.statusCode == 200) {
      final List<dynamic> jsonCategories = json.decode(response.body);

      // Filter categories with non-null parentId__name
      List<dynamic> filteredCategories = jsonCategories
          .where((category) => category['parentId__name'] != null)
          .toList();

      // Create a set to store unique parentId__name values
      Set<String> uniqueParentNames = {};

      // Create a list to store the final result
      List<MyCategory> resultCategories = [];

      // Iterate over filtered categories
      for (var category in filteredCategories) {
        // Check if the parentId__name is not in the set
        if (!uniqueParentNames.contains(category['parentId__name'])) {
          // Add the parentId__name to the set to avoid repetition
          uniqueParentNames.add(category['parentId__name']);

          // Create a MyCategory object and add it to the result list
          resultCategories.add(MyCategory.fromJson(category));

          // Break the loop if the result list has reached the limit of 8 items
          if (resultCategories.length == 8) {
            break;
          }
        }
      }

      return resultCategories;
    } else {
      throw Exception('Failed to load data');
    }
  }

Future<List<Categories>> fetchallcategory(String slug) async {
  http.Response response;

  response = await http.get(Uri.parse(GLOBAL_URL + "showAllNavCategories?slug=${slug}"));
  if (response.statusCode == 200) {
    final List<dynamic> jsonData = json.decode(response.body);

    // Check if the data contains "menuData" key
    if (jsonData.isNotEmpty && jsonData[0].containsKey("menuData")) {
      final List<dynamic> categoriesJson = jsonData[0]["menuData"]["categories"];

      // Map the categoriesJson to a List<Categories>
      return categoriesJson.map((e) => Categories.fromJson(e)).toList();
    } else {
      throw Exception('Invalid data structure');
    }
  } else {
    throw Exception('Failed to load data');
  }
}



}
