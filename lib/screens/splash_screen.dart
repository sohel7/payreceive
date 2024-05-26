import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'auth/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: Colors.blueGrey,
        child: Center(
          child: InkWell(
           child: Image.asset('images/logos/logo.png',width: 80),
           onTap:()=> Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>SignIn()), (route) => false)
          )
        ),
      ),
    );
  }
}
