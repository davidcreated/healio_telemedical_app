import 'package:flutter/material.dart';

import 'package:healio/verificationpages/otpverification2.dart';

// A simple, Flutter-friendly email verified page.
// This page shows a success image and a button to continue to the home page.
// All FlutterFlow properties are removed and replaced with standard Flutter code.

class EmailVerifiedPage extends StatelessWidget {
  const EmailVerifiedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color
      body: SafeArea(
        child: SingleChildScrollView(
          // <-- Make the page vertically scrollable
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center content vertically
            children: [
              // Success image
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 24.0),
                child: Center(
                  child: Image.asset(
                    'assets/images/otpverificationimage.jpg',
                    width: 375,
                    height: 479,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Success message
              const Text(
                'Your email has been verified',
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                  color: Color(0xFF007F67),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'successfully',
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                  color: Color(0xFF007F67),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              // Continue to Home button
              SizedBox(
                width: 254,
                height: 44,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to your main/home page here
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const OtpVerification2Page(), // Replace OtpVerificationPage with your next page widget if needed
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
                  child: const Text('Continue to Home'),
                ),
              ),
              const SizedBox(height: 50),
              // Additional spacing at the bottom
            ],
          ),
        ),
      ),
    );
  }
}

// NOTE: Replace MainPage() with your actual home page widget.
