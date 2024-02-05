import 'package:devkitflutter/config/constant.dart';
import 'package:devkitflutter/model/flashsale_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class VoucherApi {
  Future<MyVoucher?> fetchvoucher() async {
    http.Response response;

    response = await http.get(Uri.parse(GLOBAL_URL+"getvoucher"));

    if (response.statusCode == 200) {
      final cjson = response.body;

      MyVoucher myvoucher = MyVoucher.fromJson(json.decode(cjson));
      return myvoucher;
    }
  }
}