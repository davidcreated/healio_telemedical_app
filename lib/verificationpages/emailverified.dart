import 'package:flutter/material.dart';
import 'package:healio/signinpages/signin.dart';

// A simple, Flutter-friendly email verified page.
// This page shows a success image and a button to continue to the home page.

class EmailVerifiedPage extends StatefulWidget {
  const EmailVerifiedPage({super.key});

  @override
  State<EmailVerifiedPage> createState() => _EmailVerifiedPageState();
}

class _EmailVerifiedPageState extends State<EmailVerifiedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color
      body: SafeArea(
        child: SingleChildScrollView(
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
                    // Navigate to your next page here
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const SignInPage(), // Replace with your next page widget if needed
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.resolveWith<Color>(
                      (Set<WidgetState> states) {
                        // This changes the button color on hover
                        if (states.contains(WidgetState.hovered)) {
                          return const Color(0xFF002180); // Blue on hover
                        }
                        return Colors.white; // Default color
                      },
                    ),
                    foregroundColor: WidgetStateProperty.resolveWith<Color>(
                      (Set<WidgetState> states) {
                        // This changes the text color on hover
                        if (states.contains(WidgetState.hovered)) {
                          return Colors.white;
                        }
                        return const Color(0xFF002180);
                      },
                    ),
                    elevation: WidgetStateProperty.all(0),
                    side: WidgetStateProperty.all(
                      const BorderSide(
                        color: Color(0xFF002180),
                        width: 2,
                      ),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    textStyle: WidgetStateProperty.all(
                      const TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  child: const Text('Done'),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              // Additional spacing at the bottomconst SizedBox(height: 30),
              // Already have an account? Login instead
            ],
          ),
        ),
      ),
    );
  }
}

// NOTE: Replace MainPage() with your actual home page widget.
