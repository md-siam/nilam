import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../auth/login_page.dart';
import '../views/views.dart';

void main() {
  // For disabling landscape view
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
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
