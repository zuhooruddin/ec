import 'package:devkitflutter/config/constant.dart';


class Featured {
  int? id;
  String? image;
  int? extPosId;
  String? name;
  String? slug;
  String? sku;
  String? description;
  int? appliesOnline;
  int? weightGrams;
  String? manufacturer;
  String? length;
  String? height;
  String? weight;
  String? width;
  String? stock;
  int? stockCheckQty;
  int? mrp;
  int? salePrice;
  int? discount;
  int? extTimestamp;
  String? author;
  String? isbn;
  int? aliasCode;
  String? descriptionLink;
  String? youtubeLink;
  String? facebookLink;
  String? twitterLink;
  String? instagramLink;
  String? itemInstructions;
  String? itemTag;
  String? vendorTag;
  int? isNewArrival;
  String? newArrivalTill;
  String? metaUrl;
  String? metaTitle;
  String? metaDescription;
  String? timestamp;
  int? status;
  int? isFeatured;
  List<String>? sizes;
  List<String>? colors;

  Featured(
      {this.id,
      this.image,
      this.extPosId,
      this.name,
      this.slug,
      this.sku,
      this.description,
      this.appliesOnline,
      this.weightGrams,
      this.manufacturer,
      this.length,
      this.height,
      this.weight,
      this.width,
      this.stock,
      this.stockCheckQty,
      this.mrp,
      this.salePrice,
      this.discount,
      this.extTimestamp,
      this.author,
      this.isbn,
      this.aliasCode,
      this.descriptionLink,
      this.youtubeLink,
      this.facebookLink,
      this.twitterLink,
      this.instagramLink,
      this.itemInstructions,
      this.itemTag,
      this.vendorTag,
      this.isNewArrival,
      this.newArrivalTill,
      this.metaUrl,
      this.metaTitle,
      this.metaDescription,
      this.timestamp,
      this.status,
      this.isFeatured,
      this.sizes,
      this.colors});

  Featured.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    extPosId = json['extPosId'];
    name = json['name'];
    slug = json['slug'];
    sku = json['sku'];
    description = json['description'];
    appliesOnline = json['appliesOnline'];
    weightGrams = json['weightGrams'];
    manufacturer = json['manufacturer'];
    length = json['length'];
    height = json['height'];
    weight = json['weight'];
    width = json['width'];
    stock = json['stock'];
    stockCheckQty = json['stockCheckQty'];
    mrp = json['mrp'];
    salePrice = json['salePrice'];
    discount = json['discount'];
    extTimestamp = json['extTimestamp'];
    author = json['author'];
    isbn = json['isbn'];
    aliasCode = json['aliasCode'];
    descriptionLink = json['descriptionLink'];
    youtubeLink = json['youtube_link'];
    facebookLink = json['facebook_link'];
    twitterLink = json['twitter_link'];
    instagramLink = json['instagram_link'];
    itemInstructions = json['itemInstructions'];
    itemTag = json['itemTag'];
    vendorTag = json['vendorTag'];
    isNewArrival = json['isNewArrival'];
    newArrivalTill = json['newArrivalTill'];
    metaUrl = json['metaUrl'];
    metaTitle = json['metaTitle'];
    metaDescription = json['metaDescription'];
    timestamp = json['timestamp'];
    status = json['status'];
    isFeatured = json['isFeatured'];
    sizes = json['sizes'].cast<String>();
    colors = json['colors'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['extPosId'] = this.extPosId;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['sku'] = this.sku;
    data['description'] = this.description;
    data['appliesOnline'] = this.appliesOnline;
    data['weightGrams'] = this.weightGrams;
    data['manufacturer'] = this.manufacturer;
    data['length'] = this.length;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['width'] = this.width;
    data['stock'] = this.stock;
    data['stockCheckQty'] = this.stockCheckQty;
    data['mrp'] = this.mrp;
    data['salePrice'] = this.salePrice;
    data['discount'] = this.discount;
    data['extTimestamp'] = this.extTimestamp;
    data['author'] = this.author;
    data['isbn'] = this.isbn;
    data['aliasCode'] = this.aliasCode;
    data['descriptionLink'] = this.descriptionLink;
    data['youtube_link'] = this.youtubeLink;
    data['facebook_link'] = this.facebookLink;
    data['twitter_link'] = this.twitterLink;
    data['instagram_link'] = this.instagramLink;
    data['itemInstructions'] = this.itemInstructions;
    data['itemTag'] = this.itemTag;
    data['vendorTag'] = this.vendorTag;
    data['isNewArrival'] = this.isNewArrival;
    data['newArrivalTill'] = this.newArrivalTill;
    data['metaUrl'] = this.metaUrl;
    data['metaTitle'] = this.metaTitle;
    data['metaDescription'] = this.metaDescription;
    data['timestamp'] = this.timestamp;
    data['status'] = this.status;
    data['isFeatured'] = this.isFeatured;
    data['sizes'] = this.sizes;
    data['colors'] = this.colors;
    return data;
  }
}


class HomeTrendingModel {
  late int id;
  late String name;
  late String image;
  late String sale;

  HomeTrendingModel({required this.id, required this.name, required this.image, required this.sale});
}

/*
Home Trending Data Information
width = 700px
height = 700px
 */
List<HomeTrendingModel> homeTrendingData =[
  HomeTrendingModel(
      id: 1,
      name: 'Adidas Shirt',
      image: GLOBAL_URL+'/apps/ecommerce/product/21.jpg',
      sale: '12.7k'
  ),
  HomeTrendingModel(
      id: 2,
      name: 'iPhone SE 2020',
      image: GLOBAL_URL+'/apps/ecommerce/product/22.jpg',
      sale: '8k'
  ),
  HomeTrendingModel(
      id: 3,
      name: 'Macbook Air 2020',
      image: GLOBAL_URL+'/apps/ecommerce/product/23.jpg',
      sale: '31.4k'
  ),
  HomeTrendingModel(
      id: 4,
      name: 'Gaming Chair',
      image: GLOBAL_URL+'/apps/ecommerce/product/24.jpg',
      sale: '11.9k'
  ),
];