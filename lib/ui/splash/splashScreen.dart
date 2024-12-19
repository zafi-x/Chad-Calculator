import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:max_calculator/ui/OnBording/onBordingScreen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => slider()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 162, 212),
      body: Center(
        child: Container(
          height: 210.h,
          width: 250.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 252, 103, 27),
                  blurRadius: 200.r,
                )
              ]),
          child: Center(
            child: Image.asset(
              'assets/logo.png',
              // height: 300.h,
              // width: 300.w,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
