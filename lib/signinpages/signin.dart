import 'package:flutter/material.dart';
import 'package:healio/forgotpassword/forgotpassword.dart';

// A Flutter-friendly Sign In page with all FlutterFlow properties removed.

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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
                children: [
                  // Add vertical space before the title
                  const SizedBox(height: 40),
                  // Title
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontFamily: 'NotoSerif',
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
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
                  const SizedBox(height: 24),
                  // Password field
                  TextFormField(
                    controller: passwordController,
                    obscureText: obscurePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xE2190B99),
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            obscurePassword = !obscurePassword;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Forgot Password
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        // Navigate to Forgot Password page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ForgotPasswordPage(), // Make sure this page exists and is imported
                          ),
                        );
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xE2190B99),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 200),
                  const SizedBox(height: 24),
                  // Sign In button
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Add sign in logic and navigation
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
                      child: const Text('Sign in'),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Sign up prompt
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account? "),
                      GestureDetector(
                        onTap: () {
                          // TODO: Add navigation to sign up page
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
                  // Social sign in
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
