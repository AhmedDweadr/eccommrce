import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context), // الآن الزرار بيرجع
        ),
        title: const Text('Profile', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // عشان لو الشاشة صغيرة يبقى scrollable
        child: Column(
          children: [
            const SizedBox(height: 20),
            Stack(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    "assets/images/Image Popular Product 1.png",
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: InkWell(
                      onTap: () {
                        print("Add photo");
                      },
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            _buildMenuItem(Icons.person_outline, 'My Account', () {}),
            _buildMenuItem(
              Icons.notifications_outlined,
              'Notifications',
              () {},
            ),
            _buildMenuItem(Icons.settings_outlined, 'Settings', () {}),
            _buildMenuItem(Icons.help_outline, 'Help Center', () {}),
            _buildMenuItem(Icons.logout, 'Log Out', () {
              // هنا ممكن تضيف عملية خروج حقيقية
              // Navigator.pushAndRemoveUntil(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const SignUpScreen(),
              //   ),
              //   (route) => false,
              // );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, VoidCallback onTap) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFFFF7043)),
        title: Text(
          title,
          style: const TextStyle(fontSize: 16, color: Color(0xFFFF7043)),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Color(0xFFFF7043),
          size: 16,
        ),
        onTap: onTap,
      ),
    );
  }
}
