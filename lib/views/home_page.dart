import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nilam/controllers/login_controllers.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage:
              Image.network(controller.googleAccount.value.photoUrl ?? '')
                  .image,
          radius: 80,
        ),
        Text(
          controller.googleAccount.value.displayName ?? '',
          style: Get.textTheme.headline6,
        ),
        ActionChip(
          avatar: Icon(Icons.logout),
          label: const Text("Logout"),
          onPressed: () {
            controller.logout();
          },
        ),
      ],
    );
  }
}
