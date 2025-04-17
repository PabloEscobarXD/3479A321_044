import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'MyHomePage.dart';

var logger = Logger();

void main() {
  logger.d("Logger is working!");
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
        fontFamily: 'IBMPlexMono'
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
