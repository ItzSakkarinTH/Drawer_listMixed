import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listview_app/profile_page.dart';
import 'package:listview_app/gallery.dart';
import 'package:listview_app/main.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Home'),
          ),
          ListTile(
            title: const Text('โปรไฟล์'),
            onTap: () {
              Get.to(() => const ProfilePage());
            },
          ),
          ListTile(
            title: const Text('ดูรูปทั้งหมด'),
            onTap: () {
              Get.to(() => const PrincessLoidHomePage());
            },
          ),
        ],
      ),
    );
  }
}
