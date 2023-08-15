import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personality_guess/screens/start_screen.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 26, 12, 222),
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
  textTheme: GoogleFonts.latoTextTheme(),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 14, 4, 4),
        backgroundColor: Colors.amber.shade600,
        elevation: 0.5,
        shadowColor: Colors.blue),
  ),
);
void main() {
  runApp(const DefaultScreen());
}

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const StartScreen(),
    );
  }
}
