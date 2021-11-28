import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nilam/controllers/login_controllers.dart';
import 'package:nilam/views/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() {
          if (controller.googleAccount.value == null) {
            return SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Welcome to \" নিলাম \"!",
                    style: TextStyle(fontSize: 29, fontWeight: FontWeight.w900),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "The fastest growing C2C E-commerce\nplatform in Bangladesh",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  const Flexible(
                    child: Image(
                      image: AssetImage('assets/images/login_image.png'),
                      width: double.infinity,
                    ),
                  ),
                  buildLoginButton(),
                ],
              ),
            );
          } else {
            return HomePage();
          }
        }),
      ),
    );
  }

  FloatingActionButton buildLoginButton() {
    return FloatingActionButton.extended(
      onPressed: () {
        controller.login();
      },
      icon: Image.asset(
        "assets/images/google-logo.png",
        height: 32,
        width: 32,
      ),
      label: const Text(
        "Sign in with Google",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );
  }
}
