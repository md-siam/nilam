import 'package:flutter/material.dart';

class BannerImageModel extends StatelessWidget {
  final String image;
  final BoxFit fit;
  final double width, height;
  const BannerImageModel(this.image,
      {Key key, this.fit, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: fit,
      width: width,
      height: height,
    );
  }
}

class CategoriesModel {
  String imageUrl;
  String title;

  CategoriesModel({
    this.imageUrl,
    this.title,
  });
}
