import 'package:flutter/material.dart';
import 'package:open_fashion/screens/splash_view.dart';

void main() {
  runApp(const OpenFashion());
}

class OpenFashion extends StatelessWidget {
  const OpenFashion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: SplashView(),
    );
  }
}
