import 'package:addtocart/screen/model/promodal.dart';
import 'package:addtocart/screen/provider/homeprovider.dart';
import 'package:addtocart/screen/view/ProductDetail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Homeprovider? homeprovider;

  @override
  Widget build(BuildContext context) {
    homeprovider = Provider.of<Homeprovider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {
              Navigator.pushNamed(context, 'cart');
            },icon: Icon(Icons.shopping_cart),),
          ],
        ),
        body: GridView.builder(
          itemCount: homeprovider!.l1.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'productdetail',arguments: productmodel(name: homeprovider!.l1[index].name,image: homeprovider!.l1[index].image,price: homeprovider!.l1[index].price));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset("${homeprovider!.l1[index].image}",
                        height: 196, width: 196),
                    Text("${homeprovider!.l1[index].name}",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("${homeprovider!.l1[index].price}",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
