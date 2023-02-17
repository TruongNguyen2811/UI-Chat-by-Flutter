import 'package:flutter/material.dart';
import 'package:ui_chat/screens/themes/theme.dart';
import 'package:ui_chat/screens/home_screen.dart';

void main(List<String> args) {
 runApp(const MyApp()); 
}
class MyApp
 extends StatelessWidget {
  const MyApp
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}