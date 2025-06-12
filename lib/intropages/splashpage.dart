import 'package:flutter/material.dart';
import 'package:healio/intropages/splashpage2.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashPageWidgetState();
}

class _SplashPageWidgetState extends State<Splashpage>
    with TickerProviderStateMixin {
  // Used to control opacity animation
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    // Trigger animation on page load
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Optional key for accessing scaffold from outside
      key: GlobalKey<ScaffoldState>(),

      // Page background color
      backgroundColor: Colors.white,

      body: Stack(
        children: [
          // Full-screen tappable image with fade animation
          GestureDetector(
            onTap: () {
              // Navigate to next page (replace with your page class)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Splashpage2()),
              );
            },
            child: AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeInOut,
              child: Container(
                width: double.infinity,
                height: 1000,
                decoration:
                    const BoxDecoration(), // You can add a background color or gradient
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/splash1.png', // Make sure this asset exists in pubspec.yaml
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
