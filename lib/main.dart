import 'package:flutter/material.dart';
import 'package:peter_seboyeng_module_3/screens/home.dart';
import 'package:splashscreen/splashscreen.dart';


void main() => runApp(const MaterialApp(
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 14,
      navigateAfterSeconds: const HomeContainer(),
      title: const Text('PROFILE APP', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white, letterSpacing: 1.5),),
      backgroundColor: Colors.deepOrange[800],
    );
  }
}

class HomeContainer extends StatelessWidget {
  const HomeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrange[800],
        accentColor: Colors.amber,
      ),
      home: const Home(),
    );
  }
}

