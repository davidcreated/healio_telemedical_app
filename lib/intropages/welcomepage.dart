import 'package:flutter/material.dart';
import 'package:healio/intropages/splashpage3.dart';

void main() {
  runApp(const MyApp());
}

// Entry point of the app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

// First Onboarding Page
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/Onboarding 1.png',
              width: MediaQuery.of(context).size.width,
              height: 800,
              fit: BoxFit.cover,
            ),
          ),

          // Foreground content
          Column(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Skip button goes to page 2
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const WelcomePage2()),
                        );
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Notosans',
                        ),
                      ),
                    ),

                    // Page indicators
                    Row(
                      children: [
                        // Active dot
                        Container(
                          width: 24,
                          height: 8,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0033A1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        const SizedBox(width: 6),

                        // Inactive dot
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const WelcomePage2()),
                            );
                          },
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Arrow button to go to page 2
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const WelcomePage2()),
                        );
                      },
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xFF0033A1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Second Onboarding Page
class WelcomePage2 extends StatelessWidget {
  const WelcomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/Onboarding 2.png',
              width: MediaQuery.of(context).size.width,
              height: 800,
              fit: BoxFit.cover,
            ),
          ),

          // Foreground content
          Column(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Skip button (could go to home)
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  const Splashpage3()), // come back to this later
                        );
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Notosans',
                        ),
                      ),
                    ),

                    // Page indicators
                    Row(
                      children: [
                        // Inactive dot
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context); // Back to page 1
                          },
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        const SizedBox(width: 6),

                        // Active dot
                        Container(
                          width: 24,
                          height: 8,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0033A1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ],
                    ),

                    // Arrow button to go to page 3
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const Splashpage3()),
                        );
                      },
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xFF0033A1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
