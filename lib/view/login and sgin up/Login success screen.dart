import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatefulWidget {
  const LoginSuccessScreen({super.key});

  @override
  State<LoginSuccessScreen> createState() => _LoginSuccessScreenState();
}

class _LoginSuccessScreenState extends State<LoginSuccessScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            height: size.height - MediaQuery.of(context).padding.top,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Animated check with background circles
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // Background circles
                    for (int i = 0; i < 8; i++)
                      Positioned(
                        left: (size.width / 2) - 100 + (i % 4) * 40,
                        top: (size.height / 2) - 150 + (i ~/ 4) * 40,
                        child: Container(
                          width: (i % 2 == 0 ? 8 : 6) * (size.width / 400),
                          height: (i % 2 == 0 ? 8 : 6) * (size.width / 400),
                          decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.6),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ScaleTransition(
                      scale: _scaleAnimation,
                      child: Container(
                        width: 120 * (size.width / 400),
                        height: 120 * (size.width / 400),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF7043),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.orange.withOpacity(0.3),
                              blurRadius: 40,
                              spreadRadius: 20,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 60,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const Text(
                  'Login Success',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'You have successfully logged in. Enjoy shopping!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to Home Screen
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF7043),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        ),
                      ),
                      child: const Text(
                        'Back to Home',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
