import 'dart:async';
import 'package:flutter/material.dart';
import 'package:healio/verificationpages/emailverified.dart';

// A simple, Flutter-friendly OTP verification page for entering a 6-digit code.
// This code is beginner-friendly and uses only standard Flutter widgets.

class OtpVerification2Page extends StatefulWidget {
  const OtpVerification2Page({super.key});

  @override
  State<OtpVerification2Page> createState() => _OtpVerification2PageState();
}

class _OtpVerification2PageState extends State<OtpVerification2Page> {
  // Controllers for each OTP digit field
  final List<TextEditingController> _otpControllers =
      List.generate(6, (_) => TextEditingController());

  // Focus nodes for each OTP digit field (for auto-focus)
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());

  int _counter = 15;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Start the countdown timer
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_counter > 0) {
        setState(() {
          _counter--;
        });
      } else {
        _timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    // Dispose all controllers and focus nodes to free resources
    for (final controller in _otpControllers) {
      controller.dispose();
    }
    for (final node in _focusNodes) {
      node.dispose();
    }
    _timer?.cancel();
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
      backgroundColor: Colors.white, // Set background color
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top logo/image
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
              const Text(
                'Enter the six-digit code sent to',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
              // Email (replace with actual email if available)
              const Padding(
                padding: EdgeInsets.only(top: 4.0, bottom: 20.0),
                child: Text(
                  'martinsjoseph@gmail.com',
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
              ),
              // OTP input fields
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
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
              ),
              // "Didn't get the OTP?" and "Resend"
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Didn't get the OTP?",
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add resend OTP logic here
                    },
                    child: const Text(
                      'Resend',
                      style: TextStyle(
                        color: Color(0xE2190B99),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              // Countdown timer
              Text(
                'in $_counter seconds',
                style: const TextStyle(fontSize: 14, color: Colors.black54),
              ),
              const SizedBox(height: 40),
              // "Verify" button
              SizedBox(
                width: 254,
                height: 44,
                child: ElevatedButton(
                  onPressed: () {
                    // Collect the OTP code
                    String otp = _otpControllers.map((c) => c.text).join();
                    // TODO: Add your OTP verification logic here
                    print('Entered OTP: $otp');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const EmailVerifiedPage(), // Replace OtpVerificationPage with your next page widget if needed
                      ),
                    );
                    // Navigate to the next page if OTP is correct
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage()));
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
            ],
          ),
        ),
      ),
    );
  }
}
