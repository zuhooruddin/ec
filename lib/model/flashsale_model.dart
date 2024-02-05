import 'package:devkitflutter/config/constant.dart';

class MyVoucher {
  String? msg;
  List<Voucher> voucher=[];

  MyVoucher({this.msg, required this.voucher});

  MyVoucher.fromJson(Map<String, dynamic> json) {
    msg = json['Msg'];
    if (json['voucher'] != null) {
      voucher = <Voucher>[];
      json['voucher'].forEach((v) {
        voucher!.add(new Voucher.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Msg'] = this.msg;
    if (this.voucher != null) {
      data['voucher'] = this.voucher!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Voucher {
  int? id;
  String? name;
  String? image;
  String? code;
  String? discount;
  int? status;
  String? startdate;
  String? enddate;

  Voucher(
      {this.id,
      this.name,
      this.image,
      this.code,
      this.discount,
      this.status,
      this.startdate,
      this.enddate});

  Voucher.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    code = json['code'];
    discount = json['discount'];
    status = json['status'];
    startdate = json['startdate'];
    enddate = json['enddate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['code'] = this.code;
    data['discount'] = this.discount;
    data['status'] = this.status;
    data['startdate'] = this.startdate;
    data['enddate'] = this.enddate;
    return data;
  }
}



class Discount {
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

  Discount(
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

  Discount.fromJson(Map<String, dynamic> json) {
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




class FlashsaleModel {
  late int id;
  late String name;
  late double price;
  late String image;
  late int discount;
  late double countItem;
  late int sale;

  FlashsaleModel({required this.id, required this.name, required this.price, required this.image, required this.discount, required this.countItem, required this.sale});
}

/*
Flashsale Data Information
width = 700px
height = 700px
 */
List<FlashsaleModel> flashsaleData =[
  FlashsaleModel(
      id: 1,
      name: 'BARDI Smart IP Camera CCTV Wifi IoT HomeAutomation Support iOS Android',
      price: 32.3,
      image: GLOBAL_URL+'/apps/ecommerce/product/1.jpg',
      discount: 35,
      countItem: 20,
      sale: 17
  ),
  FlashsaleModel(
      id: 2,
      name: 'TEROPONG MINI 30 X 60 BINOCULARS HD NIGHT VERSION 30 X 60',
      price: 9,
      image: GLOBAL_URL+'/apps/ecommerce/product/2.jpg',
      discount: 20,
      countItem: 20,
      sale: 19
  ),
  FlashsaleModel(
      id: 3,
      name: 'CAFELE Premium Light Glass Case - iPhone 11 Pro iPhone 11 Pro Max - iP 11 Pro Max',
      price: 12.85,
      image: GLOBAL_URL+'/apps/ecommerce/product/3.jpg',
      discount: 30,
      countItem: 60,
      sale: 13
  ),
  FlashsaleModel(
      id: 4,
      name: 'Logitech G502 Hero / Mouse Logitech G 502 Hero Original Garansi Resmi',
      price: 68.25,
      image: GLOBAL_URL+'/apps/ecommerce/product/4.jpg',
      discount: 20,
      countItem: 130,
      sale: 70
  ),
  FlashsaleModel(
      id: 5,
      name: 'Pioneer SE-C5TW TWS Bluetooth Truly Wireless Earphones - Hitam',
      price: 56.85,
      image: GLOBAL_URL+'/apps/ecommerce/product/5.jpg',
      discount: 15,
      countItem: 20,
      sale: 10
  ),
  FlashsaleModel(
      id: 6,
      name: 'Anker SoundCore Life Note Wireless Earbuds Bluetooth Earphones A3908 - Hitam',
      price: 76.6,
      image: GLOBAL_URL+'/apps/ecommerce/product/6.jpg',
      discount: 40,
      countItem: 130,
      sale: 99
  ),
  FlashsaleModel(
      id: 7,
      name: 'Audio Technica AT-LP60X Fully Automatic Belt-Drive Stereo Turntable',
      price: 215.58,
      image: GLOBAL_URL+'/apps/ecommerce/product/7.jpg',
      discount: 20,
      countItem: 40,
      sale: 30
  ),
  FlashsaleModel(
      id: 8,
      name: 'Xiaomi Deerma CM800 UV Anti Mite Vacuum Cleaner Dust Bed Sofa',
      price: 44.28,
      image: GLOBAL_URL+'/apps/ecommerce/product/8.jpg',
      discount: 30,
      countItem: 20,
      sale: 15
  ),
  FlashsaleModel(
      id: 9,
      name: 'Sony SRS- XB12 / XB 12 Extra Bass Portable Bluetooth Speaker - Black',
      price: 53.33,
      image: GLOBAL_URL+'/apps/ecommerce/product/9.jpg',
      discount: 10,
      countItem: 41,
      sale: 2
  ),
  FlashsaleModel(
      id: 10,
      name: 'Changhong Google certified Android Smart TV 32 inch 32H4 LED TV-L32H4',
      price: 240.61,
      image: GLOBAL_URL+'/apps/ecommerce/product/10.jpg',
      discount: 46,
      countItem: 20,
      sale: 18
  ),
  FlashsaleModel(
      id: 11,
      name: 'READY DJI Mavic Air Fly More Combo',
      price: 776.67,
      image: GLOBAL_URL+'/apps/ecommerce/product/11.jpg',
      discount: 10,
      countItem: 20,
      sale: 20
  ),
  FlashsaleModel(
      id: 12,
      name: 'gopro hero 8 black garansi resmi TAM / go pro hero8 black / 8black',
      price: 391.76,
      image: GLOBAL_URL+'/apps/ecommerce/product/12.jpg',
      discount: 15,
      countItem: 20,
      sale: 19
  ),
  FlashsaleModel(
      id: 13,
      name: 'QZSD Q-202F - Flat Lay Tripod - Transverse Center Column FREE Holder U',
      price: 40.74,
      image: GLOBAL_URL+'/apps/ecommerce/product/13.jpg',
      discount: 10,
      countItem: 20,
      sale: 7
  ),
  FlashsaleModel(
      id: 14,
      name: 'WD My Passport 2TB Hardisk Eksternal 2.5" USB 3.0 HDD External Baru - 1TB, Merah',
      price: 63.3,
      image: GLOBAL_URL+'/apps/ecommerce/product/14.jpg',
      discount: 40,
      countItem: 14,
      sale: 10
  ),
  FlashsaleModel(
      id: 15,
      name: 'SanDisk 128GB Kartu Memori 100MB/S Ultra Microsd SD With Adapter Card',
      price: 12,
      image: GLOBAL_URL+'/apps/ecommerce/product/15.jpg',
      discount: 40,
      countItem: 140,
      sale: 96
  ),
  FlashsaleModel(
      id: 16,
      name: 'SanDisk Extreme Pro USB 3.1 Solid State Flash Drive 256GB',
      price: 120,
      image: GLOBAL_URL+'/apps/ecommerce/product/16.png',
      discount: 40,
      countItem: 20,
      sale: 4
  ),
  FlashsaleModel(
      id: 17,
      name: 'Harley Davidson Skull & Flames Nylon Bomber Jacket',
      price: 104.16,
      image: GLOBAL_URL+'/apps/ecommerce/product/17.jpg',
      discount: 20,
      countItem: 60,
      sale: 50
  ),
  FlashsaleModel(
      id: 18,
      name: 'video intercom doorbell Wireless wifi HD Res - Cloud Storage ESCAM V6',
      price: 55.825,
      image: GLOBAL_URL+'/apps/ecommerce/product/18.jpg',
      discount: 20,
      countItem: 20,
      sale: 17
  ),
  FlashsaleModel(
      id: 19,
      name: 'DEADBOLT DOOR LOCK SMART DOOR LOCK / SMART LOCK DOOR MEREK SEYVEN - EZ-TTLOCK',
      price: 150,
      image: GLOBAL_URL+'/apps/ecommerce/product/19.jpg',
      discount: 20,
      countItem: 20,
      sale: 6
  ),
  FlashsaleModel(
      id: 20,
      name: 'BT-RIDER" GPS NAVIGATION ANDROID 6.0, 5 in WATERPROOF',
      price: 191.66,
      image: GLOBAL_URL+'/apps/ecommerce/product/20.jpg',
      discount: 20,
      countItem: 20,
      sale: 15
  ),
];