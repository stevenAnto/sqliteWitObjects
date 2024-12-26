import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/counter_function_screen.dart';
import 'package:flutter_application_1/screens/counter_screen.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.red
      ),
      home: const CounterFunctionScreen()
    );
  }
}