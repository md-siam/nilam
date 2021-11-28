import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:nilam/controllers/login_controllers.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
            avatar: const Icon(FontAwesomeIcons.signOutAlt),
            label: const Text("Logout"),
            onPressed: () {
              controller.logout();
            },
          ),
        ],
      ),
    );
  }
}
