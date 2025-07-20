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
          title: const Text(
            'Flutter App',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: const Color(0xFF4CAF50),
          centerTitle: true,
          elevation: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF66BB6A), Color(0xFF4CAF50)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        drawer: const MyDrawer(),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFE8F5E8), Color(0xFFF1F8E9), Color(0xFFE8F5E8)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Welcome Container
                  Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF4CAF50).withOpacity(0.2),
                          blurRadius: 15,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        // Icon
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFF81C784), Color(0xFF66BB6A)],
                            ),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFF4CAF50).withOpacity(0.3),
                                blurRadius: 10,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.star,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Welcome Text
                        const Text(
                          'ยินดีต้อนรับ!',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2E7D32),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Welcome To Flutter App',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF388E3C),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Buttons Container
                  Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        // Gallery Button
                        SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => const PrincessLoidHomePage());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF66BB6A),
                              foregroundColor: Colors.white,
                              elevation: 8,
                              shadowColor: const Color(
                                0xFF4CAF50,
                              ).withOpacity(0.5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.photo_library, size: 24),
                                const SizedBox(width: 10),
                                const Text(
                                  'เปิดแกลเลอรี่',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // Info Button
                        SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: OutlinedButton(
                            onPressed: () {
                              _showInfoDialog(context);
                            },
                            style: OutlinedButton.styleFrom(
                              foregroundColor: const Color(0xFF4CAF50),
                              side: const BorderSide(
                                color: Color(0xFF66BB6A),
                                width: 2,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.info_outline, size: 24),
                                SizedBox(width: 10),
                                Text(
                                  'เกี่ยวกับแอป',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Footer Text
                  Text(
                    'สร้างด้วย Flutter 💚',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color(0xFF4CAF50).withOpacity(0.7),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showInfoDialog(BuildContext context) {
    Get.defaultDialog(
      title: 'เกี่ยวกับแอป',
      titleStyle: const TextStyle(
        color: Color(0xFF2E7D32),
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      content: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFF81C784).withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.flutter_dash,
              color: Color(0xFF4CAF50),
              size: 40,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Flutter App แสดงแกลเลอรี่',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2E7D32),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'แอปพลิเคชันสำหรับดูรูปภาพ\nและจัดการโปรไฟล์ของคุณ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF388E3C),
              height: 1.4,
            ),
          ),
        ],
      ),
      radius: 15,
      backgroundColor: Colors.white,
      confirm: ElevatedButton(
        onPressed: () => Get.back(),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF66BB6A),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text('ปิด', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
