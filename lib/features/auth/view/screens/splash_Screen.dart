import 'package:flutter/material.dart';
import 'package:talabat/core/manager/assets_manager.dart';
import 'package:talabat/features/address/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => WelcomeScreen()), 
      );
    });

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            ImageAssetsManager.splashImage
          ),
        ],
      ),
    );
  }
}
