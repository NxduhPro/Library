import '/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'hub_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to HubPage after 5 seconds
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HubPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.yellow,
          image: DecorationImage(
            image: AssetImage(AppAssets.backgroundWall),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo displayed in the center
              Image.asset(
                AppAssets.iconLogo,
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 30),
              const Text(
                'BookHive: The Library Booking System',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.dark,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
