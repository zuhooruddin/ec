import 'package:devkitflutter/APi/voucher.dart';
import 'package:devkitflutter/config/constant.dart';
import 'package:devkitflutter/config/global_style.dart';
import 'package:devkitflutter/model/coupon_model.dart';
import 'package:devkitflutter/model/flashsale_model.dart';
import 'package:devkitflutter/ui/home/coupon_detail.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../reusable/cache_image_network.dart';

class CouponPage extends StatefulWidget {
  @override
  _CouponPageState createState() => _CouponPageState();
}

class _CouponPageState extends State<CouponPage> {
  TextEditingController _etSearch = TextEditingController();
  
    late MyVoucher myvoucher;
List<Voucher> vouchers = []; // Initialize the list before using it

  VoucherApi voucherapi = new VoucherApi();

  Future<void> fetchvoucher() async {
    final data = await voucherapi.fetchvoucher();

    if (data != null) {
      setState(() {
        myvoucher = data;
        vouchers = data.voucher;
      });
    }
  }

  @override
  void initState() {
    fetchvoucher();
    super.initState();
  }

  @override
  void dispose() {
    _etSearch.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: GlobalStyle.appBarIconThemeColor,
          ),
          elevation: GlobalStyle.appBarElevation,
          title: Text(
            'Coupon',
            style: GlobalStyle.appBarTitle,
          ),
          backgroundColor: GlobalStyle.appBarBackgroundColor,
          systemOverlayStyle: GlobalStyle.appBarSystemOverlayStyle,
          bottom: PreferredSize(
            child: Container(
              
              
            ),
            preferredSize: Size.fromHeight(0),
          ),
        ),
        body: WillPopScope(
          onWillPop: (){
            Navigator.pop(context);
            return Future.value(true);
          },
          child: ListView.builder(
  itemCount: vouchers.length,
  padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
  physics: AlwaysScrollableScrollPhysics(),
  itemBuilder: (BuildContext context, int index) {
    if (vouchers.isNotEmpty && index < vouchers.length) {
      return _buildCouponCard(vouchers[index]);
    } else {
      return Container();
    }
  },
)

        ));
  }

  Widget _buildCouponCard(couponData){
    return Card(
      margin: EdgeInsets.only(top: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      elevation: 2,
      color: Colors.white,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => CouponDetailPage(couponData: couponData)));
        },
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               buildCacheNetworkImage(
    width: 0,
    height: 0,
    url: GLOBAL_URL+'media/${couponData.image}',
  ),
              Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                decoration: BoxDecoration(
                    color: SOFT_BLUE,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Text('Limited Offer', style: GlobalStyle.couponLimitedOffer),
              ),
              SizedBox(height: 12),
              Text(couponData.name, style: GlobalStyle.couponName),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GlobalStyle.iconTime,
                      SizedBox(
                        width: 4,
                      ),
                      Text('Expiring in '+couponData.enddate, style: GlobalStyle.couponExpired),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      Fluttertoast.showToast(msg: 'Coupon applied', toastLength: Toast.LENGTH_LONG);
                      Navigator.pop(context);
                    },
                    child: Text('Use Now', style: TextStyle(
                        fontSize: 14, color: SOFT_BLUE, fontWeight: FontWeight.bold
                    )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
