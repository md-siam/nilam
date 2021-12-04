import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../const/const_colors.dart';

class BlankPage extends StatelessWidget {
  const BlankPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryAppBarColor,
        title: const Text("Blank Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(height: 20),
          Center(
            child: Image(
              image: AssetImage('assets/images/still_design.png'),
              width: double.infinity,
            ),
          ),
          Expanded(child: SizedBox()),
          Text(
            "Page Under Construction.!",
            style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
