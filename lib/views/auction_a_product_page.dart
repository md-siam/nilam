import 'package:flutter/material.dart';

class AuctionAProductPage extends StatelessWidget {
  const AuctionAProductPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
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
      ),
    );
  }
}
