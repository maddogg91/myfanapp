import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new SecondScreen(),
      title: new Text('Maddogg Software Development Company',textScaleFactor: 1,),
      image: new Image.network('https://i.ibb.co/yFLx4c8/splashscreen.gif'),
      loadingText: Text("Stand By"),
      photoSize: 200.0,
      loaderColor: Colors.blue,
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Dogg's Fan Page")),
      body: Center(
          child:Text("Home",textScaleFactor: 2,)
      ),
    );
  }
}
