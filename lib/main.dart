import 'package:dsc_app/page/home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        highlightColor: Color(0xff333333),
        accentColor: Color(0xff1FB5EB),
        canvasColor: Color(0xffF9FAF5),
      ),
      home: Splash(),
    );
  }
}


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      loaderColor: Theme.of(context).highlightColor,
      backgroundColor: Theme.of(context).canvasColor,
      navigateAfterSeconds: HomePage(),
      seconds: 3,
      loadingText: Text("Universitas Esa Unggul"),
      title: Text("SIAKAD", style: TextStyle(
        fontSize: 30,
        fontFamily: 'PTMono',
        fontWeight: FontWeight.bold,
        letterSpacing: 3
      ),),
    );
  }
}

