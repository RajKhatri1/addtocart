import 'package:addtocart/screen/model/promodal.dart';
import 'package:addtocart/screen/provider/homeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cartscreen extends StatefulWidget {
  const cartscreen({Key? key}) : super(key: key);

  @override
  State<cartscreen> createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
  Homeprovider? homeprovider;

  @override
  Widget build(BuildContext context) {
    homeprovider = Provider.of<Homeprovider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Consumer<Homeprovider>(
          builder: (context, value, child) => ListView.builder(
            itemCount: homeprovider!.cartlist.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset("${homeprovider!.l1[index].image}"),
                title: Text("${homeprovider!.l1[index].name}",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                subtitle: Text("${homeprovider!.l1[index].price}"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        productmodel p1 = productmodel(
                            name: homeprovider!.l1[index].name,
                            image: homeprovider!.l1[index].image,
                            price: homeprovider!.l1[index].price,
                            qa: homeprovider!.l1[index].qa! + 1);
                        homeprovider!.addqa(index, p1);
                      },
                      icon: Icon(Icons.add),
                    ),
                    Text("${homeprovider!.l1[index].qa}"),
                    IconButton(
                      onPressed: () {
                        productmodel p1 = productmodel(
                            name: homeprovider!.l1[index].name,
                            image: homeprovider!.l1[index].image,
                            price: homeprovider!.l1[index].price,
                            qa: homeprovider!.l1[index].qa! - 1);
                        homeprovider!.addqa(index, p1);
                      },
                      icon: Icon(Icons.remove),

                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
