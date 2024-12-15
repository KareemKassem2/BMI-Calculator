import 'package:flutter/material.dart';
import 'Screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0a0d22),
        scaffoldBackgroundColor: const Color(0xFF0A0e21),
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0a0e21),
        ),
      ),
      home: InputPage(),
      locale: const Locale.fromSubtags(),
    );
  }
}
