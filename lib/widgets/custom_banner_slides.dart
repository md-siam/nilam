import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

import '../controllers/home_page_controller.dart';
import '../models/home_page_models.dart';

class CustomBannerSlides extends StatelessWidget {
  const CustomBannerSlides({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            child: BannerImageModel(sliderItems[index], fit: BoxFit.fill),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: const EdgeInsets.all(20),
          );
        },
      ),
    );
  }
}
