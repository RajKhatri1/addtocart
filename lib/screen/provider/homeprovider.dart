import 'package:addtocart/screen/model/promodal.dart';
import 'package:flutter/material.dart';

class Homeprovider extends ChangeNotifier
{
  List<productmodel> l1= [
    productmodel(image: "assets/images/hudi.jpg",name: "hudi",price: "450",qa: 1),
    productmodel(image: "assets/images/tshirt.jpg",name: "T-shirt",price: "300",qa: 1),
    productmodel(image: "assets/images/shoes.png",name: "shoes",price: "800",qa: 1),
    productmodel(image: "assets/images/shirt.jpg",name: "Shirt",price: "600",qa: 1),
    productmodel(image: "assets/images/jeans.jpg",name: "Jeans",price: "550",qa: 1),
  ];

  List<productmodel> cartlist = [];


void addcart(productmodel p1)
{
  cartlist.add(p1);
  notifyListeners();
}
void addqa(int index,productmodel p1)
{
  l1[index] = p1;
  notifyListeners();
}
}