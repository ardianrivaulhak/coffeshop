import 'package:flutter/material.dart';
import 'screens/auth/login_screen.dart';

void main() {
  runApp(const CoffeeShopApp());
}

class CoffeeShopApp extends StatelessWidget {
  const CoffeeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF6F4E37),
        scaffoldBackgroundColor: const Color(0xFF1C1C1E),
        colorScheme: ColorScheme.dark(
          primary: const Color(0xFFC67C4E),
          secondary: const Color(0xFFEDD6C8),
          surface: const Color(0xFF2A2A2D),
        ),
        fontFamily: 'Roboto',
      ),
      home: const LoginScreen(),
    );
  }
}
