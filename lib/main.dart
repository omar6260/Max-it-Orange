import 'package:flutter/material.dart';
import 'package:max_it_orange/src/features/home/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Clone Max it',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x00ff7900)),
        ),
        home: const HomeScreen());
  }
}
