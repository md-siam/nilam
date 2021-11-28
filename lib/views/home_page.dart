import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:nilam/controllers/login_controllers.dart';
import 'package:nilam/widgets/custom_drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white10,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0.0,
          title: const Image(
            image: AssetImage('assets/images/nilam_as_title.png'),
          ),
          actions: <Widget>[
            IconButton(
              padding: const EdgeInsets.only(right: 25.0),
              onPressed: () => {Get.toNamed("/auction-a-product/")},
              icon: const Icon(
                FontAwesomeIcons.plusSquare,
                size: 23,
              ),
            ),
          ],
        ),
        drawer: CustomDrawer(controller: controller),
      ),
    );
  }
}
