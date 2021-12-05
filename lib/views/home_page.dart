import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../controllers/login_controllers.dart';
import '../views/views.dart';
import '../widgets/widgets.dart';

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
            image: AssetImage('assets/images/nilam_as_title_2.png'),
          ),
          actions: [
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
        // Its a custom widget
        drawer: CustomDrawer(controller: controller),
        body: ListView(
          children: [
            Column(
              children: [
                // Its a custom widget
                const CustomBannerSlides(),
                const SizedBox(height: 10.0),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Categories",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                // Its a custom widget
                const CustomCategoriesWidget(),
                const SizedBox(height: 10.0),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Live Auctions",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                const ProductPage(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
