import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main.dart';
import 'gallery.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50, // สีพื้นหลังอ่อนๆ
      appBar: AppBar(
        title: const Text('โปรไฟล์'),
        backgroundColor: const Color.fromARGB(255, 4, 89, 154),
        elevation: 4,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // เผื่อเนื้อหายาวเกิน
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // วงกลมรูปโปรไฟล์ พร้อมเงา
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(
                        255,
                        1,
                        90,
                        223,
                      ).withOpacity(0.3),
                      blurRadius: 15,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/img5.png'),
                ),
              ),

              const SizedBox(height: 20),

              // ชื่อ
              Text(
                'Dr.s2kkarin',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade900,
                  letterSpacing: 1.2,
                ),
              ),

              const SizedBox(height: 8),

              // อีเมล
              Text(
                'CoolBoyYoungA@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.teal.shade700.withOpacity(0.8),
                  fontStyle: FontStyle.italic,
                ),
              ),

              const SizedBox(height: 30),

              // ปุ่มไปหน้า Home
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.home),
                  label: const Text('ไปหน้า Home'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 21, 21, 22),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    textStyle: const TextStyle(fontSize: 18),
                    elevation: 4,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // ปุ่มดูรูปทั้งหมด
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () => Get.to(() => PrincessLoidHomePage()),
                  icon: const Icon(Icons.photo_library),
                  label: const Text('ดูรูปทั้งหมด'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 15, 15, 15),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    textStyle: const TextStyle(fontSize: 18),
                    elevation: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
