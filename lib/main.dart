import 'package:flutter/material.dart';
import 'package:hyperhire_assignment/screens/responsive_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HyperHire Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsiveWrapper(),
    );
  }
}
