import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
pertemuan-5
import 'screens/dashboard_screen.dart';
=======
import 'package:myapp/basic_widget.dart';
master

void main() => runApp(const JustduitApp());

class JustduitApp extends StatelessWidget {
  const JustduitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Justduit',
      theme: ThemeData(
pertemuan-5
        scaffoldBackgroundColor: const Color(0xFFF3F6F8), // abu-abu muda

        scaffoldBackgroundColor: const Color(0xFFFFF6F8), // abu-abu muda
 master
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E88FF)),
        inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
pertemuan-5
            borderSide: const BorderSide(color: Color(0xFFDEE0E0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFDEE0E0)),
            borderSide: const BorderSide(color: Color(0xFFDEE0E9)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFDEE0E9)),
master
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF1E88FF)),
          ),
        ),
      ),
      initialRoute: LoginScreen.route,
      routes: {
pertemuan-5
        LoginScreen.route: (context) =>
            const LoginScreen(), // default = Sign In
        SignupScreen.route: (context) => const SignupScreen(),
        DashboardScreen.route: (context) => const DashboardScreen(),

        '/': (context) => const LoginScreen(), // default = Sign In
        '/signin': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/basic': (context) => const BasicWidget(), // tambahan dari master
master
      },
    );
  }
}
