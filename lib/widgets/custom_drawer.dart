import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../controllers/login_controllers.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.teal,
            child: Center(
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: Image.network(
                            controller.googleAccount.value.photoUrl ?? '')
                        .image,
                    radius: 60,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    controller.googleAccount.value.displayName ?? '',
                    style: const TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  Text(
                    controller.googleAccount.value.email ?? '',
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.gavel),
            title: const Text(
              "My Items",
              style: TextStyle(fontSize: 16.0),
            ),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              Get.toNamed('/my-products/');
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.chartLine),
            title: const Text(
              "Dashboard",
              style: TextStyle(fontSize: 16.0),
            ),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              Get.toNamed('/dashboard/');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(FontAwesomeIcons.signOutAlt),
            title: const Text(
              "Logout",
              style: TextStyle(fontSize: 16.0),
            ),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              controller.logout();
            },
          ),
          const Divider(),
          Expanded(child: Column(children: const [SizedBox()])),
          const Divider(),
          const Center(
            child: Text(
              "Version: 0.1.23",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
