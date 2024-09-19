import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat/core/manager/route_manager.dart';
import 'package:talabat/core/styles/app_theme.dart';
import 'package:talabat/features/auth/view/screens/splash_Screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return MaterialApp(

      routes: routeManager,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
    );
  }
}
