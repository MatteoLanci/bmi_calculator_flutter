import 'package:bmi_calculator/pages/HomePage.dart';
import 'package:bmi_calculator/pages/SecondPage.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/homepage':
        return MaterialPageRoute(builder: (context) => const HomePage());
      case '/secondpage':
        if (args is Map<String, String>) {
          return MaterialPageRoute(
            builder: (context) => SecondPage(
              firstName: args['firstName'] ?? '',
              lastName: args['lastName'] ?? '',
            ),
          );
        }
        return MaterialPageRoute(builder: (context) => const HomePage());

      default:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}
