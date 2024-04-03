import 'package:flutter/material.dart';
import 'package:horecah/constants.dart';
import 'package:horecah/view/form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kThemeColor),
        useMaterial3: true,
      ),
      home: const HorecahForm(),
    );
  }
}
