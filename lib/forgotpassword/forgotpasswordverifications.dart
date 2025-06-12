import 'package:flutter/material.dart';
import 'package:healio/forgotpassword/createnewpassword.dart';
import 'package:healio/signup_pages.dart/signup_page.dart';

// A Flutter-friendly Forgot Password Verification Code page with all FlutterFlow properties removed.

class ForgotPasswordVerificationCodePage extends StatefulWidget {
  const ForgotPasswordVerificationCodePage({super.key});

  @override
  State<ForgotPasswordVerificationCodePage> createState() =>
      _ForgotPasswordVerificationCodePageState();
}

class _ForgotPasswordVerificationCodePageState
    extends State<ForgotPasswordVerificationCodePage> {
  // Controllers for each OTP digit field
  final List<TextEditingController> _otpControllers =
      List.generate(6, (_) => TextEditingController());

  // Focus nodes for each OTP digit field (for auto-focus)
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());

  @override
  void dispose() {
    for (final controller in _otpControllers) {
      controller.dispose();
    }
    for (final node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  // Helper to move focus to the next field automatically
  void _onOtpChanged(String value, int index) {
    if (value.length == 1 && index < 5) {
      _focusNodes[index + 1].requestFocus();
    }
    if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }
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
                    'Verification Code',
                    style: TextStyle(
                      fontFamily: 'NotoSerif',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Instruction
                  const Text(
                    'Enter the verification codes we sent to\nyour email address',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 30),
                  // OTP input fields
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(6, (index) {
                      return Container(
                        width: 40,
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        child: TextFormField(
                          controller: _otpControllers[index],
                          focusNode: _focusNodes[index],
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                          decoration: const InputDecoration(
                            counterText: '',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xE2190B99),
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF002180),
                                width: 2.0,
                              ),
                            ),
                          ),
                          onChanged: (value) => _onOtpChanged(value, index),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 310),
                  // Verify button
                  SizedBox(
                    width: double.infinity,
                    height: 44,
                    child: ElevatedButton(
                      onPressed: () {
                        // Collect the OTP code
                        String otp = _otpControllers.map((c) => c.text).join();
                        // TODO: Add your OTP verification logic here

                        // Navigate to the Create New Password page after verification
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreateNewPasswordPage(),
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
                      child: const Text('Verify'),
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
                                  const SignupPage(), // Make sure SignUpPage is imported
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
