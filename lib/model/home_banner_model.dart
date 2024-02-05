import 'package:devkitflutter/config/constant.dart';

class HomeBannerModel {
  late int id;
  late String image;

  HomeBannerModel({required this.id, required this.image});
}

/*
Banner Data Information
width = 800px
height = 600px
 */
List<HomeBannerModel> homeBannerData =[
  HomeBannerModel(id: 1, image: GLOBAL_URL+'/apps/ecommerce/home_banner/1.jpg'),
  HomeBannerModel(id: 2, image: GLOBAL_URL+'/apps/ecommerce/home_banner/2.jpg'),
  HomeBannerModel(id: 3, image: GLOBAL_URL+'/apps/ecommerce/home_banner/3.jpg'),
  HomeBannerModel(id: 4, image: GLOBAL_URL+'/apps/ecommerce/home_banner/4.jpg'),
  HomeBannerModel(id: 5, image: GLOBAL_URL+'/apps/ecommerce/home_banner/5.jpg'),
];


class MySlider {
  int? id;
  int? siteSettingsId;
  String? image;

  MySlider({this.id, this.siteSettingsId, this.image});

  MySlider.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    siteSettingsId = json['site_settings_id'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['site_settings_id'] = this.siteSettingsId;
    data['image'] = this.image;
    return data;
  }
}