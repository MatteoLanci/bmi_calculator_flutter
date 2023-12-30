import 'package:bmi_calculator/RouteGenerator.dart';
import 'package:bmi_calculator/pages/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bmi Calculator',
      theme: ThemeData(
        // brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
