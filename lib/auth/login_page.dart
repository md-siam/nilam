import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nilam/controllers/login_controllers.dart';
import 'package:nilam/views/home_page.dart';

class LoginPage extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Obx(() {
            if (controller.googleAccount.value == null) {
              return buildLoginButton();
            } else {
              return MyHomePage();
            }
          }),
        ),
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
      label: const Text("Sign in with Google"),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );
  }
}
