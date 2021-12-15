import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medical_association/Pages/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), (){
      Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (_) => const OnBoarding() ), (route) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.white70, BlendMode.lighten)
              ),
            ),
          ),
          const Center(
            child: Image(
              width: 250,
              filterQuality: FilterQuality.high,
              image: AssetImage('assets/images/logo.png'),
            ),
          )
          
        ],
      ),
    );
  }
}