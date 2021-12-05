import 'package:flutter/material.dart';

import '../const/const_colors.dart';
import '../controllers/product_controller.dart';

class ProductDetailsPage extends StatelessWidget {
  final int id;
  const ProductDetailsPage({Key key, @required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryAppBarColor,
        title: const Text("Product Details"),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 2,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  image: AssetImage(productList[id].mainPic),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: (MediaQuery.of(context).size.height) / 2,
            child: Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productList[id].name,
                      style: const TextStyle(fontSize: 24),
                    ),
                    Text(
                      productList[id].location,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .apply(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Description:",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      productList[id].description,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .apply(color: Colors.grey),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Bid: " + productList[id].minBid + " BDT",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        const Expanded(child: SizedBox()),
                        Text(
                          "Time: " + productList[id].endTime,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "More Pictures",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: productList[id].photos.length,
                        itemBuilder: (ctx, i) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image(
                                image: AssetImage(productList[id].photos[i]),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * .7,
                      height: 45,
                      child: ElevatedButton(
                        child: Text(
                          "Place your bid",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .apply(color: Colors.white),
                        ),
                        onPressed: () => {},
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
