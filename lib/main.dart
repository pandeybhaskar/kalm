import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:splashscreen/splashscreen.dart';
import '/homepage.dart';

void main() {
  runApp(const SplashPage());
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Medical Health Platform',
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Homepage())));
  }

  @override
  Widget build(BuildContext context) {
   return Container(
     width: MediaQuery.of(context).size.width,
     height: MediaQuery.of(context).size.height,
     decoration: const BoxDecoration(
       gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment(0, 1),
          colors: <Color>[
                    Color(0xffb2d3f4),
                    Color(0xffb2d3f4),
                    Color(0xffb2d3f4),
                    Color(0xffb2d3f4),
                    Color(0xffb2d3f4),
                    Color(0xffecf2f8),
          ]
      ),
     ),
     child: const DefaultTextStyle(
         style: TextStyle(
           fontWeight: FontWeight.w600,
           fontStyle: FontStyle.italic,
           fontSize: 24,
           color: Color(0xffc56f6f),
         ),
         child: Center(
           child: Text("KALM"),
         )
     ),
   );
  }
}