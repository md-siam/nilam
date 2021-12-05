import 'package:flutter/material.dart';

import '../const/const_colors.dart';
import '../controllers/my_product_controller.dart';
import '../views/views.dart';
import '../widgets/widgets.dart';

class MyProduct extends StatelessWidget {
  const MyProduct({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryAppBarColor,
          title: const Text("My Items"),
        ),
        body: ListView(
          children: [
            Padding(
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
                        builder: (ctx) => MyProductDetailsPage(id: i),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}
