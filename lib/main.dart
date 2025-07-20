import 'package:flutter/material.dart';
import 'package:listview_app/gallery.dart';
import 'package:listview_app/components/mydrawer.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        drawer: const MyDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome To APP!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(135, 8, 66, 255),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const PrincessLoidHomePage());
                },
                child: Text('Go to Gallery Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
