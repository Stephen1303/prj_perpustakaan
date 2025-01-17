import 'package:flutter/material.dart';
import 'package:prj_perpustakaan/home_screen.dart';
import 'package:prj_perpustakaan/main_screen.dart';
import 'package:prj_perpustakaan/signin.dart';
import 'package:prj_perpustakaan/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/homescreen': (context) => const HomeScreen(),
        '/signin': (context) => const Signin(),
        '/signup': (context) => const Signup(),
      },
    );
  }
}