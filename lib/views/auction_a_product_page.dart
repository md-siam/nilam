import 'package:flutter/material.dart';

import '../const/const_colors.dart';

class AuctionAProductPage extends StatelessWidget {
  const AuctionAProductPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryAppBarColor,
        title: const Text("Auction Form"),
        //iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text('Auction form for product'),
          )
        ],
      ),
    );
  }
}
