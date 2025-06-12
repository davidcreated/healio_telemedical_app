import 'package:flutter/material.dart';
import 'package:healio/verificationpages/otp_verification.dart';
import 'package:healio/signinpages/signin.dart';

// A simple, Flutter-friendly signup page with comments for beginners.
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // Controllers for the text fields
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  // For password visibility toggle
  bool passwordVisible = false;

  // For checkbox
  bool agreeToTerms = false;

  @override
  void dispose() {
    // Dispose controllers when the widget is removed
    passwordController.dispose();
    fullnameController.dispose();
    usernameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold is the main structure of the page
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        // Dismiss keyboard when tapping outside
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'assets/images/signupscreen1.jpg',
                fit: BoxFit.fill,
                height: 700, // Adjust height as needed
                width: double.infinity, // Full width
              ),
            ),
            // Foreground content in a vertically scrollable view
            SingleChildScrollView(
              // Makes the whole content scrollable vertically
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 60.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // "Sign Up" title
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'NotoSerif',
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 40),
                    // Password field
                    TextFormField(
                      controller: passwordController,
                      obscureText: !passwordVisible,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Create a strong password for your account',
                        hintStyle: const TextStyle(
                          fontSize: 12, // Reduced font size for hint
                          color: Colors.grey,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xFF002180),
                          ),
                          onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                        ),
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Fullname field
                    TextFormField(
                      controller: fullnameController,
                      decoration: const InputDecoration(
                        labelText: 'Fullname',
                        hintText: 'Enter your Fullname',
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Username field
                    TextFormField(
                      controller: usernameController,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        hintText: 'Choose your username',
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Email field
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email Address',
                        hintText: 'Enter your email',
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Terms and conditions checkbox and text
                    Row(
                      children: [
                        Checkbox(
                          value: agreeToTerms,
                          onChanged: (value) {
                            setState(() {
                              agreeToTerms = value ?? false;
                            });
                          },
                          activeColor: const Color(0xE2190B99),
                        ),
                        Expanded(
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 14),
                              children: [
                                TextSpan(
                                    text:
                                        'By continuing, you agree to Healio '),
                                TextSpan(
                                  text: 'Terms of Use',
                                  style: TextStyle(
                                    color: Color(0xE2190B99),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(text: ' and '),
                                TextSpan(
                                  text: 'Privacy policy',
                                  style: TextStyle(
                                    color: Color(0xE2190B99),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    // Sign up button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const OtpVerificationPage(), // Replace NextPage with your next page widget
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return const Color(0xFF002180); // Blue on hover
                              }
                              return const Color(
                                  0XFF797979); // Transparent otherwise
                            },
                          ),
                          foregroundColor:
                              WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return const Color(
                                    0xFF797979); // White text on hover
                              }
                              return Colors.black; // Black text otherwise
                            },
                          ),
                          padding: WidgetStateProperty.all(
                            const EdgeInsets.symmetric(vertical: 14),
                          ),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: const BorderSide(
                                color: Color(
                                    0xFF002180), // Transparent border on hover and normal
                                width: 0,
                              ),
                            ),
                          ),
                          elevation: WidgetStateProperty.all(0),
                        ),
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'NotoSans',
                            fontWeight: FontWeight.w600,
                            color: Colors.white, // White text
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Continue with Google button styled exactly like the Sign up button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Handle Google sign up
                        },
                        icon: Image.asset(
                          'assets/vectors/google.png',
                          width: 24,
                          height: 24,
                        ),
                        label: const Text(
                          'Continue with Google',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'NotoSans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return const Color(0xFF002180); // Blue on hover
                              }
                              return Colors
                                  .transparent; // Transparent otherwise
                            },
                          ),
                          foregroundColor:
                              WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return const Color(
                                    0xFFFFFFFF); // White text on hover
                              }
                              return Colors.black; // Black text otherwise
                            },
                          ),
                          padding: WidgetStateProperty.all(
                            const EdgeInsets.symmetric(vertical: 14),
                          ),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: const BorderSide(
                                color: Colors.black87, // Border color
                                width: 1.0, // Border width
                              ),
                            ),
                          ),
                          elevation: WidgetStateProperty.all(0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Already have an account? Login instead
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account?'),
                        TextButton(
                          onPressed: () {
                            // Navigate to login page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const SignInPage(), // Make sure SignInPage is imported
                              ),
                            );
                          },
                          child: const Text(
                            'Login instead',
                            style: TextStyle(
                              color: Color(0xE2190B99),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 1,
                          color: const Color(0xFF32F3CE),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                        ),
                        const Text(
                          'Sign up with',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF000000),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                        ),
                        Container(
                          width: 40,
                          height: 1,
                          color: const Color(0xFF32F3CE),
                        ),
                      ],
                    ),
                    // Divider with text
                    const SizedBox(height: 20),
                    // Social media sign up buttons
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // Handle Facebook sign up
                            },
                            icon: Image.asset(
                              'assets/vectors/facebook.png',
                              width: 24,
                              height: 24,
                            ),
                            label: const Text('Facebook'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFA4FAE9),
                              foregroundColor: Colors.black,
                              padding: const EdgeInsets.symmetric(vertical: 14),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // Handle Apple sign up
                            },
                            icon: Image.asset(
                              'assets/vectors/google.png',
                              width: 24,
                              height: 24,
                            ),
                            label: const Text('Google'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color(0xFFA4FAE9), // Green color
                              foregroundColor: Colors.black,
                              padding: const EdgeInsets.symmetric(vertical: 14),
                            ),
                          ),
                        ),
                      ],
                    )
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
