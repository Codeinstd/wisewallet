import 'dart:async';
import 'package:flutter/material.dart';
import 'package:wisewallet/Screens/onboard1.dart';
import '../classes/style.dart';
import '../classes/media_style.dart';

// ignore: camel_case_types
class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

// ignore: camel_case_types
class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState //
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Onboard1()),
    );
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: style.primary1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/logo.png',
              height: 40,
            ),
            SizeConfig().spaceH(8),
            SizeConfig().p24medW('Wisewallet', 24),
          ],
        ),
      ),
    );
  }
}
