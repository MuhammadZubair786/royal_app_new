// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:royal_app/webView.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // double opacityLevel = 0.0;
  // double _scale = 0.0;

  @override
  void initState() {
    super.initState();
    _loadDataAndNavigate();
  }

  void _loadDataAndNavigate() async {
    // Load data or perform any async tasks

    // After loading, navigate to the next screen
    // Future.delayed(Duration(seconds: 7), () {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) => WebViewPage()),
    //   );
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Color.fromARGB(255, 48, 36, 1),
          body: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => WebViewPage()),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Image.asset(
                    "assets/logo.png",
                  ),
                ),
              ),
              SizedBox(height: 80), // Add some space between image and text
             AnimatedDefaultTextStyle(
                duration: Duration(seconds: 5),
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                child: Text(
                  'Tap anywhere to open app',
                ),
              ),
            ],
          ),
        ),
      
    );
  }
}
