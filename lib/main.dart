import 'package:flutter/material.dart';
import 'screens/play_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Piano Learning MVP',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PlayScreen(),
    );
  }
}
