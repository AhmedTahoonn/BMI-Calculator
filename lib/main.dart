import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/styles/icon_broken.dart';
import 'bmi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AnimatedSplashScreen(
        nextScreen: bmi(),
        splashTransition: SplashTransition.sizeTransition,
        backgroundColor: Colors.white,
        duration: 2300,
        splash:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(IconBroken.Home,color: Colors.blue,size: 65.0,),
            SizedBox(
              width: 5,
            ),
            Text('Welcome to BMI',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic
              ),
            ),
          ],
        ),


      ),

    );
  }
}