import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../responsive.dart';
import 'Widgets/login_form.dart';
import 'Widgets/register_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetStateColor blackColor = WidgetStateColor.resolveWith((Set<WidgetState> states) {
  if (states.contains(WidgetState.pressed)) {
    return Colors.grey.shade800; // Darker when pressed
  }
  if (states.contains(WidgetState.hovered)) {
    return Colors.grey.shade600; // Lighter when hovered
  }
  return const Color.fromRGBO(20, 70, 104, 1); // Default color
});

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.amber,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 18, color: Colors.black87),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          labelStyle: TextStyle(color: blackColor),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: blackColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      home: const RegisterScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ResponsiveScreen(
            mobile: _MobileLayout(isLogin: true),
            tablet: _DesktopLayout(isLogin: true),
            dekstop: _DesktopLayout(isLogin: true),
          ),
        ],
      ),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ResponsiveScreen(
            mobile: _MobileLayout(isLogin: false),
            tablet: _DesktopLayout(isLogin: false),
            dekstop: _DesktopLayout(isLogin: false),
          ),
        ],
      ),
    );
  }
}

class _MobileLayout extends StatelessWidget {
  final bool isLogin;
  const _MobileLayout({required this.isLogin});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset(
          'assets/animations/login.json',
          height: 200,
        ),
        isLogin ? const LoginForm() : const RegisterForm(),
      ],
    );
  }
}

class _DesktopLayout extends StatelessWidget {
  final bool isLogin;
  const _DesktopLayout({required this.isLogin});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: isLogin ? const LoginForm() : Container(height: MediaQuery.sizeOf(context).height,
            color: Color.fromRGBO(20, 70, 104, 1),
            child: Lottie.asset('assets/animations/register.json',height: 300)),
        ),
        Expanded(
          child: isLogin ?  Container(height: MediaQuery.sizeOf(context).height,color: Color.fromRGBO(20, 70, 104, 1),child: Lottie.asset('assets/animations/register.json',height: 300)) : const RegisterForm(),
        ),
      ],
    );
  }
}
