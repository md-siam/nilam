import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nilam/auth/login_page.dart';
import 'package:nilam/views/auction_a_product_page.dart';
import 'package:nilam/views/dashboard_page.dart';
import 'package:nilam/views/home_page.dart';
import 'package:nilam/views/my_product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nilam',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
      // Pages routing using GetX
      getPages: [
        GetPage(
            name: '/',
            page: () => LoginPage(),
            transition: Transition.cupertino),
        GetPage(
            name: '/homepage',
            page: () => HomePage(),
            transition: Transition.cupertino),
        GetPage(
            name: '/auction-a-product',
            page: () => AuctionAProductPage(),
            transition: Transition.cupertino),
        GetPage(
            name: '/my-products',
            page: () => MyProduct(),
            transition: Transition.cupertino),
        GetPage(
            name: '/dashboard',
            page: () => DashboardPage(),
            transition: Transition.cupertino),
      ],
    );
  }
}
