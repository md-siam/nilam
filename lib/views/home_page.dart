import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';
import '../controllers/login_controllers.dart';
import '../models/home_page_models.dart';
import '../widgets/custom_categories_widget.dart';
import '../widgets/custom_drawer.dart';

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
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Swiper(
                    itemCount: sliderItems.length,
                    autoplay: true,
                    autoplayDelay: 5000,
                    curve: Curves.easeIn,
                    layout: SwiperLayout.DEFAULT,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: BannerImageModel(sliderItems[index],
                            fit: BoxFit.fill),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        margin: const EdgeInsets.all(20),
                      );
                    },
                  ),
                ),
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
                const Card(child: Text("Check"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
