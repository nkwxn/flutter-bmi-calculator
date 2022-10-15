import 'package:flutter/material.dart';
import 'package:bmi_calc/screens/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        useMaterial3: false,
        colorScheme: const ColorScheme.light().copyWith(
          primary: const Color(0xFF0A0E21),
          onPrimary: Colors.white,
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: const InputPage(),
    );
  }
}
