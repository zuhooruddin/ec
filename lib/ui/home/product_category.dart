import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:devkitflutter/APi/CategoryApi.dart';
import 'package:devkitflutter/config/constant.dart';
import 'package:devkitflutter/config/global_style.dart';
import 'package:devkitflutter/model/category_all_product_model.dart';
import 'package:devkitflutter/model/category_banner_model.dart';
import 'package:devkitflutter/model/category_new_product_model.dart';
import 'package:devkitflutter/model/category_trending_product_model.dart';
import 'package:devkitflutter/ui/general/product_detail/product_detail.dart';
import 'package:devkitflutter/ui/home/search.dart';
import 'package:devkitflutter/ui/reusable/reusable_widget.dart';
import 'package:devkitflutter/ui/reusable/cache_image_network.dart';
import 'package:devkitflutter/ui/reusable/global_function.dart';
import 'package:flutter/material.dart';

import '../../model/category_model.dart';

class ProductCategoryPage extends StatefulWidget {
  final String categorySlug;
  final String categoryName;

  const ProductCategoryPage({Key? key, required this.categoryName, required this.categorySlug}) : super(key: key);
  @override
  _ProductCategoryPageState createState() => _ProductCategoryPageState();
}

class _ProductCategoryPageState extends State<ProductCategoryPage> {


  // initialize global function and reusable widget
  final _globalFunction = GlobalFunction();
  final _reusableWidget = ReusableWidget();

  int _currentImageSlider = 0;

    List<Categories> mycategory=[];


 CategoryApi categoryapi=new CategoryApi();


  Future<void> fetchallcategory() async {
    final categorys=await categoryapi.fetchallcategory(widget.categorySlug);
    setState(() {
     
      if(categorys!=null){
        mycategory=categorys;
      }
    });
  }
  @override
  void initState() {
fetchallcategory();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double boxImageSize = (MediaQuery.of(context).size.width / 3);

    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: GlobalStyle.appBarIconThemeColor,
          ),
          elevation: GlobalStyle.appBarElevation,
          title: Text(
            widget.categoryName.replaceAll('\n', ' '),
            style: GlobalStyle.appBarTitle,
          ),
          backgroundColor: GlobalStyle.appBarBackgroundColor,
          systemOverlayStyle: GlobalStyle.appBarSystemOverlayStyle,
          actions: [
            IconButton(
                icon: Icon(Icons.search, color: BLACK_GREY),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()));
                }),
          ],
          bottom: _reusableWidget.bottomAppBar(),
        ),
        body: WillPopScope(
          onWillPop: (){
            Navigator.pop(context);
            return Future.value(true);
          },
          child: ListView(
            physics: AlwaysScrollableScrollPhysics(),
            children: [
              // _createCategorySlider(),
             Container(
                margin: EdgeInsets.only(top:20, left: 16, right: 16),
                child: Text('Related Categories', style: GlobalStyle.sectionTitle),
              ),
              CustomScrollView(
                  shrinkWrap: true,
                  primary: false,
                  slivers: <Widget>[
                    SliverPadding(
                      padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                      sliver: SliverGrid(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          childAspectRatio: GlobalStyle.gridDelegateRatio2,
                        ),
                        delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                            return _buildAllProductCard(index);
                          },
                          childCount: mycategory.length,
                        ),
                      ),
                    ),
                  ]
              ),
            ],
          ),
        )
    );
  }


  Widget _buildAllProductCard(index){
    final double boxImageSize = ((MediaQuery.of(context).size.width)-24)/2-12;
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 2,
        color: Colors.white,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailPage(name: mycategory[index].title.toString(), image: mycategory[index].icon.toString(), price: categoryAllProductData[index].price, rating: categoryAllProductData[index].rating, review: categoryAllProductData[index].review, sale: categoryAllProductData[index].sale)));
          },
          child: Column(
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                  child: buildCacheNetworkImage(width: boxImageSize, height: boxImageSize, url: GLOBAL_URL+'media/'+mycategory[index].icon.toString())
              ),
              Container(
                margin: EdgeInsets.fromLTRB(8, 12, 8, 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mycategory[index].title.toString(),
                      style: GlobalStyle.sectionTitle2, maxLines: 2, overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
