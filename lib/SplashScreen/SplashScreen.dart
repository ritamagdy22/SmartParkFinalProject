import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_parking_final/RegisterScreen/WelcomeScreen.dart';

class SplashScreen extends StatefulWidget {
  static const routename = "SplashScreen";


  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => const WelcomeScreen(),
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c),
          ),
          ((route) => false));
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Image.asset(
        'assets/images/SmartPark_Screen.png',
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}

/*
      body: Image.asset('assets/images/Splash Screen.png',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
 */
