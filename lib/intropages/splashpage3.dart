import 'package:flutter/material.dart';
import 'package:healio/signinpages/signin.dart';
import 'package:healio/signup_pages.dart/signup_page.dart';

class Splashpage3 extends StatefulWidget {
  const Splashpage3({super.key});

  @override
  State<Splashpage3> createState() => _Splashpage3WidgetState();
}

class _Splashpage3WidgetState extends State<Splashpage3>
    with TickerProviderStateMixin {
  // Animation controllers for the buttons
  late AnimationController _signUpController;
  late AnimationController _loginController;

  @override
  void initState() {
    super.initState();

    // Initialize animations
    _signUpController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    )..forward(); // Start the animation

    _loginController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    )..forward(); // Start the animation
  }

  @override
  void dispose() {
    // Clean up animation controllers
    _signUpController.dispose();
    _loginController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Close keyboard if opened
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F5F5), // Light background color
        body: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                'assets/images/Onboarding 3.png',
                fit: BoxFit.cover,
              ),
            ),
            // Buttons aligned to bottom center
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Sign Up Button with animated scale
                    ScaleTransition(
                      scale: _signUpController,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const SignupPage(), // cplace with your Sign Up page
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF002180),
                          minimumSize: const Size(270, 50),
                          side: const BorderSide(color: Color(0xFF002180)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        child: const Text('Sign Up'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Login Button with animated scale
                    ScaleTransition(
                      scale: _loginController,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignInPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF130A54),
                          minimumSize: const Size(270, 50),
                          side: const BorderSide(color: Color(0xFF130A54)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        child: const Text('Login'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
