import 'package:flutter/material.dart';

// A simple, Flutter-friendly OTP verification page with beginner comments.
class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({super.key});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  // Controller for the email input field
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    // Dispose the controller when the widget is removed
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top image/logo
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Image.asset(
                  'assets/vectors/otpverification.png',
                  width: 221,
                  height: 265,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 40),
              // Title
              const Text(
                'Email Verification',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'NotoSerif',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 30),
              // Subtitle
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  'We will send a one-time password to\nthis email',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // "Edit email" clickable text
              GestureDetector(
                onTap: () {
                  // You can add logic to let the user edit their email
                },
                child: const Text(
                  'Edit email',
                  style: TextStyle(
                    color: Color(0xE2190B99),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Email input field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  autofillHints: const [AutofillHints.email],
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    hintText: 'Enter your email',
                    border: UnderlineInputBorder(),
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
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              // "Get OTP" button
              SizedBox(
                width: 254,
                height: 44,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle OTP request logic here
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
            ],
          ),
        ),
      ),
    );
  }
}
