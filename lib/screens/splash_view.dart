import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_fashion/screens/home._view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 2),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (c) {
            return HomeView();
          },
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SvgPicture.asset("assets/logo/logo-bg.svg", width: 150),
      ),
    );
  }
}
