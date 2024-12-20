import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'screens/splash_screen.dart';
import 'utils/app_styles.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  // Set window properties
  windowManager.setTitle("BookHive: The Library Booking System");
  windowManager.setIcon(AppAssets.iconLogomin);
  windowManager.setResizable(false); // Prevent resizing
  windowManager.setMinimizable(false); // Remove minimize button
  windowManager.setMaximizable(false); // Remove maximize button 
  
  windowManager.setClosable(true); // Remove close button
  windowManager.setSize(const Size(1440, 900));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}