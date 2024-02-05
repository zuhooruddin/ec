import 'package:devkitflutter/config/constant.dart';



class MyCategory {
  int? id;
  String? slug;
  int? extPosId;
  int? parentId;
 String? parentIdName;
  String? parentIdSlug;
  String? name;
  String? description;
  int? showAtHome;
  String? icon;

  MyCategory(
      {this.id,
      this.slug,
      this.extPosId,
      this.parentId,
      this.parentIdName,
      this.parentIdSlug,
      this.name,
      this.description,
      this.showAtHome,
      this.icon});

  MyCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    extPosId = json['extPosId'];
    parentId = json['parentId'];
    parentIdName =json['parentId__name'] ;
    parentIdSlug =json['parentId__slug'] ;

    name = json['name'];
    description = json['description'];
    showAtHome = json['showAtHome'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['extPosId'] = this.extPosId;
    data['parentId'] = this.parentId;
    data['parentId__name']=this.parentIdName;
        data['parentId__slug']=this.parentIdSlug;

    data['name'] = this.name;
    data['description'] = this.description;
    data['showAtHome'] = this.showAtHome;
    data['icon'] = this.icon;
    return data;
  }
}

class AllCategory {
  String? title;
  String? slug;
  String? icon;
  int? id;
  String? menuComponent;
  String? href;
  MenuData? menuData;

  AllCategory(
      {this.title,
      this.slug,
      this.icon,
      this.id,
      this.menuComponent,
      this.href,
      this.menuData});

  AllCategory.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    slug = json['slug'];
    icon = json['icon'];
    id = json['id'];
    menuComponent = json['menuComponent'];
    href = json['href'];
    menuData = json['menuData'] != null
        ? new MenuData.fromJson(json['menuData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['icon'] = this.icon;
    data['id'] = this.id;
    data['menuComponent'] = this.menuComponent;
    data['href'] = this.href;
    if (this.menuData != null) {
      data['menuData'] = this.menuData!.toJson();
    }
    return data;
  }
}

class MenuData {
  List<Categories>? categories;

  MenuData({this.categories});

  MenuData.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  String? title;
  String? icon;
  String? slug;
  String? href;
  List<Null>? subCategories;

  Categories({this.title, this.icon, this.slug, this.href, this.subCategories});

  Categories.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    icon = json['icon'];
    slug = json['slug'];
    href = json['href'];
 
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['icon'] = this.icon;
    data['slug'] = this.slug;
    data['href'] = this.href;
  
    return data;
  }
}




class CategoryModel {
  late int id;
  late String name;
  late String image;

  CategoryModel({required this.id, required this.name, required this.image});
}

/*
Category Data Information
width = 110px
height = 110px
 */
List<CategoryModel> categoryData =[
  CategoryModel(
    id: 1,
    name: 'Fashion',
    image: GLOBAL_URL+'/apps/ecommerce/category/fashion.png',
  ),
  CategoryModel(
    id: 2,
    name: 'Smartphone & Tablets',
    image: GLOBAL_URL+'/apps/ecommerce/category/smartphone.png',
  ),
  CategoryModel(
    id: 3,
    name: 'Electronic',
    image: GLOBAL_URL+'/apps/ecommerce/category/electronic.png',
  ),
  CategoryModel(
    id: 4,
    name: 'Otomotif',
    image: GLOBAL_URL+'/apps/ecommerce/category/otomotif.png',
  ),
  CategoryModel(
    id: 5,
    name: 'Sport',
    image: GLOBAL_URL+'/apps/ecommerce/category/sport.png',
  ),
  CategoryModel(
    id: 6,
    name: 'Food',
    image: GLOBAL_URL+'/apps/ecommerce/category/food.png',
  ),
  CategoryModel(
    id: 7,
    name: 'Voucher\nGame',
    image: GLOBAL_URL+'/apps/ecommerce/category/voucher_game.png',
  ),
  CategoryModel(
    id: 8,
    name: 'Health & Care',
    image: GLOBAL_URL+'/apps/ecommerce/category/health.png',
  ),
];