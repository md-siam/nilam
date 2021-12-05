import 'package:flutter/material.dart';

import '../controllers/product_controller.dart';
import '../views/views.dart';
import '../widgets/widgets.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: productList.length,
        itemBuilder: (ctx, i) {
          return ProductContainer(
            name: productList[i].name,
            description: productList[i].description,
            mainPic: productList[i].mainPic,
            location: productList[i].location,
            minBid: productList[i].minBid,
            endTime: productList[i].endTime,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => ProductDetailsPage(id: i),
              ),
            ),
          );
        },
      ),
    );
  }
}
