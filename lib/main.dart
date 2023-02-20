import 'package:flutter/material.dart';

import 'Sing_in.dart';
import 'Sing_up.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "chatApp",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home:Sing_In(),
      //Sing_In
    );
  }
}
