import 'package:addtocart/screen/model/promodal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/homeprovider.dart';

class detailScreen extends StatefulWidget {
  const detailScreen({Key? key}) : super(key: key);

  @override
  State<detailScreen> createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {
  Homeprovider? homeprovider;
  @override
  Widget build(BuildContext context) {
    homeprovider = Provider.of<Homeprovider>(context, listen: false);
    productmodel p1 = ModalRoute.of(context)!.settings.arguments as productmodel;
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          color: Colors.white,
          child: Image.asset("${p1.image}", height: 209, width: 209),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "${p1.name}",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        ),
        SizedBox(
          height: 15,
        ),
        Text("${p1.price}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
            )),
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: () {
            homeprovider!.addcart(p1);
          },
          child: Text("Add To Cart"),
        ),
      ],
    );
  }
}
