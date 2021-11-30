import 'package:flutter/material.dart';

import '../const/const_colors.dart';

class MyProduct extends StatelessWidget {
  const MyProduct({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryAppBarColor,
        title: const Text("My Items"),
        //iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text('My auction items'),
          )
        ],
      ),
    );
  }
}
