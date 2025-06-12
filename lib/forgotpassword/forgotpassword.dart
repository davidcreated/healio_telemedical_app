import 'package:flutter/material.dart';
import 'package:healio/signup_pages.dart/signup_page.dart';
import 'package:healio/forgotpassword/forgotpasswordverifications.dart'; // <-- Import the verification page

// A Flutter-friendly Forgot Password page with all FlutterFlow properties removed.
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/signupscreen1.jpg',
              fit: BoxFit.fill,
            ),
          ),
          // Main content
          SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 60.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  // Title
                  const Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontFamily: 'NotoSerif',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 40),
                  // Instruction
                  const Text(
                    "Enter the email associated with your\naccount and we'll send an OTP code",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Email field
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email Address',
                      hintText: 'Enter your email',
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xE2190B99),
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  const SizedBox(height: 310),
                  // Get OTP button
                  SizedBox(
                    width: double.infinity,
                    height: 44,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to the Forgot Password Verifications page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ForgotPasswordVerificationCodePage(), // Make sure this class exists in forgotpasswordverifications.dart
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF002180),
                        elevation: 0,
                        side: const BorderSide(
                          color: Color(0xFF002180),
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        textStyle: const TextStyle(
                          fontFamily: 'NotoSans',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      child: const Text('Get OTP'),
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Sign up prompt
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account? "),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the Sign Up page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const SignupPage(), // Make sure SignUpPage is imported from signup_page.dart
                            ),
                          );
                        },
                        child: const Text(
                          'Sign Up here',
                          style: TextStyle(
                            color: Color(0xE2190B99),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
