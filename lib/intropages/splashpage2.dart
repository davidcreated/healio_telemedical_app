import 'package:flutter/material.dart';
import 'package:healio/intropages/welcomepage.dart';

class Splashpage2 extends StatefulWidget {
  const Splashpage2({super.key});

  @override
  State<Splashpage2> createState() => _SecondHomePageWidgetState();
}

class _SecondHomePageWidgetState extends State<Splashpage2>
    with TickerProviderStateMixin {
  // Opacity variable for fade animation
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    // Trigger fade animation and navigate after short delay
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 1.0;
      });
    });

    // Navigate to Onboarding1 screen after slight delay (simulate FlutterFlow's transition)
    Future.delayed(const Duration(milliseconds: 600), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const WelcomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Hide keyboard when tapping outside
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF0D074B), // Dark blue background
        body: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut,
          child: InkWell(
            onTap: () {
              // Navigate when tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WelcomePage()),
              );
            },
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/splash2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
