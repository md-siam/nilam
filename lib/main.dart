import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nilam/auth/login_page.dart';
import 'package:nilam/views/home_page.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      // Pages routing
      getPages: [
        GetPage(
            name: '/',
            page: () => LoginPage(),
            transition: Transition.cupertino),
        GetPage(
            name: '/homepage',
            page: () => HomePage(),
            transition: Transition.cupertino),
      ],
    );
  }
}
