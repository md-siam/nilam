import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCategoriesWidget extends StatelessWidget {
  const CustomCategoriesWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: 70.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            GestureDetector(
              onTap: () => Get.toNamed("/blank/"),
              child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/category/smartphone.png"),
                            fit: BoxFit.cover),
                        color: Colors.white10,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Text("Smartphone"),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => Get.toNamed("/blank/"),
              child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/category/tablet.png"),
                            fit: BoxFit.cover),
                        color: Colors.white10,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Text("Tablet"),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => Get.toNamed("/blank/"),
              child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/category/furniture.png"),
                            fit: BoxFit.cover),
                        color: Colors.white10,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Text("Furniture"),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => Get.toNamed("/blank/"),
              child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/category/motor-sport.png"),
                            fit: BoxFit.cover),
                        color: Colors.white10,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Text("Motorcycle"),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => Get.toNamed("/blank/"),
              child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/category/television.png"),
                            fit: BoxFit.cover),
                        color: Colors.white10,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Text("Television"),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => Get.toNamed("/blank/"),
              child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/category/computer.png"),
                            fit: BoxFit.cover),
                        color: Colors.white10,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Text("Desktop"),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => Get.toNamed("/blank/"),
              child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/category/laptop.png"),
                            fit: BoxFit.cover),
                        color: Colors.white10,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Text("Laptop"),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => Get.toNamed("/blank/"),
              child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/category/watch.png"),
                            fit: BoxFit.cover),
                        color: Colors.white10,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Text("Wearable"),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => Get.toNamed("/blank/"),
              child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/category/car.png"),
                            fit: BoxFit.cover),
                        color: Colors.white10,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Text("Car"),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => Get.toNamed("/blank/"),
              child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/category/ac.png"),
                            fit: BoxFit.cover),
                        color: Colors.white10,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Text("Air Condition"),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => Get.toNamed("/blank/"),
              child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/category/refrigerator.png"),
                            fit: BoxFit.cover),
                        color: Colors.white10,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Text("Refrigerator"),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
