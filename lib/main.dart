import 'package:addtocart/screen/provider/homeprovider.dart';
import 'package:addtocart/screen/view/ProductDetail.dart';
import 'package:addtocart/screen/view/cartScreen.dart';
import 'package:addtocart/screen/view/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Homeprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Homescreen(),
          'productdetail' : (context) => detailScreen(),
          'cart' : (context) => cartscreen(),
        },
      ),
    ),
  );
}

